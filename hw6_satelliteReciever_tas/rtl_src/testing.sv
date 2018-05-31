
//-------------------------------------------------------------------
// captures serial data to parallel while data_ena is asserted
//-------------------------------------------------------------------

//module serialdata_to_parallel (
module testing (
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
