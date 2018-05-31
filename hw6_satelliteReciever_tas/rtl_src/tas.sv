//-------------------------------------------------------------------
// Top-level module - Temperature Averager System
//-------------------------------------------------------------------
module tas (
    input  clk_50,               // 50Mhz input clock
    input  clk_2,                // 2Mhz input clock
    input  reset_n,              // reset async active low
    input  serial_data,          // serial input data
    input  data_ena,             // serial data enable
    output ram_wr_n,             // write strobe to ram
    output logic [7:0] ram_data,       // ram data
    output [10:0] ram_addr       // ram address
    );

    // internal connections
    logic shift_done;
    logic is_header_byte;
    logic is_data_byte;
    logic [7:0] data;
    logic fifo_wr;
    logic fifo_empty;
    logic fifo_full;
    logic [7:0] fifo_data;
    logic is_temperature_packet;
    logic averager_add;
    logic averager_avg;
    logic averager_clr;


    // fifo write enable/strobe
    assign fifo_wr = is_data_byte && is_temperature_packet && shift_done;

    fifo fifo1(
       .wr_clk(clk_50),   //write clock
       .rd_clk(clk_2),   //read clock
       .reset_n(reset_n),  //reset async active low
       .wr(fifo_wr),       //write enable
       .rd(fifo_rd),       //read enable
       .data_in(data),  //data in
       .data_out(fifo_data), //data out
       .empty(fifo_empty),    //empty flag
       .full(fifo_full)     //full flag
       );

    packet_sm packet_sm1(.*);

    serialdata_to_parallel serialdata_to_parallel1(.*);

    packet_type packet_type1(.*);

    averager_controller averager_controller1(.*);

    averager averager1(.*);

    ram_addr_controller ram_addr_controller1(.*);
endmodule // tas


//-------------------------------------------------------------------
// packet_sm - keeps track of which byte in a packet is recieved
//-------------------------------------------------------------------
module packet_sm (
    input clk_50,    // Clock
    input reset_n,  // Asynchronous reset active low
    input shift_done,
    output logic is_header_byte,
    output logic is_data_byte
    );

    enum logic [2:0]{
        HEADER  = 3'b000,
        BYTE1   = 3'b100,
        BYTE2   = 3'b101,
        BYTE3   = 3'b110,
        BYTE4   = 3'b111
    }packet_sm_ps, packet_sm_ns;

    always_ff @(posedge clk_50, negedge reset_n)
        if(~reset_n)
          packet_sm_ps <= HEADER;
        else
          packet_sm_ps <= packet_sm_ns;

        always_comb begin
            unique case (packet_sm_ps)
                HEADER:
                    if(shift_done)
                        packet_sm_ns = BYTE1;
                    else
                        packet_sm_ns = HEADER;
                BYTE1:
                    if(shift_done)
                        packet_sm_ns = BYTE2;
                    else
                        packet_sm_ns = BYTE1;
                BYTE2:
                    if(shift_done)
                        packet_sm_ns = BYTE3;
                    else
                        packet_sm_ns = BYTE2;
                BYTE3:
                    if(shift_done)
                        packet_sm_ns = BYTE4;
                    else
                        packet_sm_ns = BYTE3;
                BYTE4:
                    if(shift_done)
                        packet_sm_ns = HEADER;
                    else
                        packet_sm_ns = BYTE4;
            endcase
        end // always_comb

    // output logic
    always_comb begin
        if(packet_sm_ps == HEADER)
            is_header_byte = 1;
        else
            is_header_byte = 0;
    end

    assign is_data_byte = packet_sm_ps[2];
endmodule


//-------------------------------------------------------------------
// packet_type - determines if the packet is a temperature data packet
//-------------------------------------------------------------------
module packet_type (
    input           clk_50,    // Clock
    input           reset_n,  // Asynchronous reset active low
    input [7:0]     data,
    input           is_header_byte,
    output logic    is_temperature_packet
    );

    always_ff @(posedge clk_50, negedge reset_n) begin
        if(~reset_n)
            is_temperature_packet <= '0;
        else if (is_header_byte)
            is_temperature_packet <= (data == 8'hA5 || data == 8'hC3);
        else
            is_temperature_packet <= is_temperature_packet;
    end
endmodule


//-------------------------------------------------------------------
// captures serial data to parallel while data_ena is asserted
//-------------------------------------------------------------------
module serialdata_to_parallel (
    input clk_50,    // Clock
    input data_ena, // Clock Enable
    input reset_n,  // Asynchronous reset active low
    input serial_data,
    output logic [7:0] data,
    output logic       shift_done // strobes when the byte is read
    );

    // internal connections
    //logic [7:0] data;
    logic [3:0] shift_cnt;
    // logic [7:0] data_temp;
    //logic       shift_done;
    // done shifting at 8 shifts
    assign shift_done = shift_cnt[3];


    // shift register for serial data
    always_ff @(posedge clk_50, negedge reset_n) begin
        if(~reset_n)
            data <= '0;
        else if(data_ena)
            data <= {serial_data, data[7:1]};
        else
            data <= data;
    end // always_ff @(posedge clk_50, negedge reset_n)

    // shift counter - resets when the data_ena is 0
    always_ff @(posedge clk_50, negedge reset_n)
        if(~reset_n)
            shift_cnt <= '0;
        else if (~data_ena)
            shift_cnt <= '0;
        else
            shift_cnt <= shift_cnt + 1;
            // shift in serial data while data_ena
endmodule


//-------------------------------------------------------------------
// controls the average operation
//-------------------------------------------------------------------
module averager_controller(
    input clk_2,    // Clock
    input reset_n,  // Asynchronous reset active low
    input fifo_empty,
    output logic fifo_rd,
    output logic averager_add,
    output logic averager_avg,
    output logic ram_wr_n,
    output logic averager_clr
    );

    logic [2:0] add_cnt;

    enum logic [2:0]{
        INIT    = 3'b000,
        READ    = 3'b001,
        ADD     = 3'b010,
        WAIT    = 3'b011,
        AVG     = 3'b100,
        WRITE   = 3'b111
    }averager_sm_ps, averager_sm_ns;


    always_ff @(posedge clk_2, negedge reset_n)
        if(~reset_n)
            averager_sm_ps <= INIT;
        else
            averager_sm_ps <= averager_sm_ns;

        always_comb begin
            unique case (averager_sm_ps)
                INIT:
                    if(~fifo_empty)
                        averager_sm_ns = READ;
                    else
                        averager_sm_ns = INIT;
                READ:
                        averager_sm_ns = ADD;
                ADD:
                        averager_sm_ns = WAIT;
                WAIT:
                    if(add_cnt == 4)
                        averager_sm_ns = AVG;
                    else if(~fifo_empty)
                        averager_sm_ns = READ;
                    else
                        averager_sm_ns = WAIT;
                AVG:
                        averager_sm_ns = WRITE;
                WRITE:
                        averager_sm_ns = INIT;
            endcase
        end // always_comb


    // add counter - resets when the state is INIT
    always_ff @(posedge clk_2, negedge reset_n)
        if(~reset_n)
            add_cnt <= '0;
        else if (averager_sm_ps == INIT)
            add_cnt <= '0;
        else if (averager_sm_ps == ADD)
            add_cnt <= add_cnt + 1;
        else
            add_cnt <= add_cnt;

    //output logic
    assign fifo_rd      = ~averager_sm_ps[2] && ~averager_sm_ps[1] &&  averager_sm_ps[0];
    assign averager_add = ~averager_sm_ps[2] &&  averager_sm_ps[1] && ~averager_sm_ps[0];
    assign averager_avg =  averager_sm_ps[2] && ~averager_sm_ps[1] && ~averager_sm_ps[0];

    always_comb begin
        if (averager_sm_ps == WRITE)
            ram_wr_n = 0;
        else
            ram_wr_n = 1;
    end

    assign averager_clr = ~averager_sm_ps[2] && ~averager_sm_ps[1] && ~averager_sm_ps[0];
endmodule

//-------------------------------------------------------------------
// averager - averages the temperature data
//-------------------------------------------------------------------
module averager (
    input               clk_2,    // Clock
    input               reset_n,
    input               averager_clr,
    input               averager_add,
    input               averager_avg,
    input  [7:0]        fifo_data,
    output logic [7:0]  ram_data
    );
    logic [9:0] temp_reg;

    always_ff @(posedge clk_2, negedge reset_n) begin
        if(~reset_n)
            temp_reg <= '0;
        else if (averager_clr)
            temp_reg <= '0;
        else if (averager_add)
            temp_reg  <= fifo_data + temp_reg;
        else if (averager_avg)
            temp_reg <= temp_reg >> 2;
        else
            temp_reg <= temp_reg;
    end

    assign ram_data = temp_reg[7:0];
endmodule


module ram_addr_controller(
    input               ram_wr_n,
    input               reset_n,
    output logic [10:0] ram_addr       // ram address
    );

    // shift counter - resets when the data_ena is 0
    always_ff @(posedge ram_wr_n, negedge reset_n)
        if(~reset_n)
            ram_addr <= 11'h7FF;
        else if (ram_addr == 11'h000)
            ram_addr <= 11'h7FF;
        else
            ram_addr <= ram_addr - 1;
endmodule




module fifo (
       input            wr_clk,   //write clock
       input            rd_clk,   //read clock
       input            reset_n,  //reset async active low
       input            wr,       //write enable
       input            rd,       //read enable
       input      [7:0] data_in,  //data in
       output reg [7:0] data_out, //data out
       output           empty,    //empty flag
       output           full      //full flag
       );

    // Internal connections
    logic [2:0] rd_pnt;
    logic [2:0] wr_pnt;
    logic       rd_toggle;
    logic       wr_toggle;
    logic [7:0] rd_mem_out;

    // Data out register
    always_ff @(posedge rd_clk, negedge reset_n)
        if(~reset_n)
            data_out <= '0;
        else
            data_out <= rd_mem_out;

    // instantiate memory
    memory memory_0 (.*);

    // instantiate empty/full logic
    empty_full empty_full_0 (.*);

    // instantiate write_pointer/toggle
    read_pointer read_pointer_0 (.*);

    // instantiate write_pointer logic
    write_pointer write_pointer_0 (.*);
endmodule // fifo


//-------------------------------------------------------------------
// This module creates the 8 x 8 memory
//-------------------------------------------------------------------
module memory (
    input               wr_clk,
    input   logic [2:0] wr_pnt,   // write address + toggle bit
    input   logic [7:0] data_in,     // data to write at wr_pnt
    input   logic       wr,          // write enable
    input   logic [2:0] rd_pnt,   // read address + toggle bit
    input   logic       full,        // memory full
    output  logic [7:0] rd_mem_out   // continous assign by rd_pnt
    );

    // internal connections and comb logic
    logic [7:0] mem [7:0];  // 8 x 16 memory
    assign rd_mem_out = mem[rd_pnt];

    // Write to the wr_pnt address, (bits 0-2)
    // reset_n not needed here since the pointers and empty bit are reset
    always_ff @(posedge wr_clk)
        if (!full && wr) mem[wr_pnt] <= data_in;
        else             mem[wr_pnt] <= mem[wr_pnt];
endmodule // memory


//-------------------------------------------------------------------
// This module determines if the memory is empty or full
//-------------------------------------------------------------------
module empty_full (
    input logic [2:0] wr_pnt,
    input logic [2:0] rd_pnt,
    input logic       rd_toggle,
    input logic       wr_toggle,
    output logic      empty,
    output logic      full
    );

    // Continous assignment
    assign empty = (rd_toggle == wr_toggle) && (rd_pnt == wr_pnt);
    assign full  = (rd_toggle != wr_toggle) && (rd_pnt == wr_pnt);
endmodule

//-------------------------------------------------------------------
// This module controls how the read pointer is moved
//-------------------------------------------------------------------
module read_pointer (
    input               rd_clk,   //read clock
    input               reset_n,  //reset async active low
    input               rd,       //read strobe
    input               empty,    //memory empty
    output logic [2:0]  rd_pnt,   //memory address to read from
    output logic        rd_toggle //if the pointer has wrapped around
    );

    // Read toggle changes when the read_pnt goes beyond
    // the last byte
    always_ff @(posedge rd_clk, negedge reset_n)
        if(~reset_n)
            {rd_toggle, rd_pnt} <= '0;
        else if (rd && ~empty)
            {rd_toggle, rd_pnt} <= {rd_toggle, rd_pnt} + 1;
        else
            {rd_toggle, rd_pnt} <= {rd_toggle, rd_pnt};
endmodule

//-------------------------------------------------------------------
// This module controls how the write pointer is moved
//-------------------------------------------------------------------
module write_pointer (
    input               wr_clk,   //read clock
    input               reset_n,  //reset async active low
    input               wr,       //read strobe
    input               full,     //memory empty
    output logic [2:0]  wr_pnt,   //memory address to read from
    output logic        wr_toggle //if the pointer has wrapped around
    );

    // Write toggle changes when the read_pnt goes beyond
    // the last byte
    always_ff @(posedge wr_clk, negedge reset_n)
        if(~reset_n)
            {wr_toggle, wr_pnt} <= '0;
        else if (wr && ~full)
            {wr_toggle, wr_pnt} <= {wr_toggle, wr_pnt} + 1;
        else
            {wr_toggle, wr_pnt} <= {wr_toggle, wr_pnt};
endmodule
