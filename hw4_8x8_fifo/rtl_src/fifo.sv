//-------------------------------------------------------------------
// Top-level module - creates a 8x8 dual clock fifo in SystemVerilog
//-------------------------------------------------------------------
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
    logic [7:0] mem [7:0];  // 8 x 8 memory
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
