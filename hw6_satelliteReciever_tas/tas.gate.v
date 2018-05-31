/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP2
// Date      : Wed May 30 23:44:30 2018
/////////////////////////////////////////////////////////////


module memory ( wr_clk, wr_pnt, data_in, wr, rd_pnt, full, rd_mem_out );
  input [2:0] wr_pnt;
  input [7:0] data_in;
  input [2:0] rd_pnt;
  output [7:0] rd_mem_out;
  input wr_clk, wr, full;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] , \mem[7][3] ,
         \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] , \mem[6][6] ,
         \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] , \mem[6][1] ,
         \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] , \mem[5][4] ,
         \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] , \mem[4][7] ,
         \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] , \mem[4][2] ,
         \mem[4][1] , \mem[4][0] , \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , N15, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45;

  \**SEQGEN**  \mem_reg[7][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[7][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[7][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N40) );
  \**SEQGEN**  \mem_reg[6][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[6][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[6][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N39) );
  \**SEQGEN**  \mem_reg[5][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[5][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[5][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N38) );
  \**SEQGEN**  \mem_reg[4][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[4][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[4][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N37) );
  \**SEQGEN**  \mem_reg[3][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[3][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N36) );
  \**SEQGEN**  \mem_reg[2][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[2][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N35) );
  \**SEQGEN**  \mem_reg[1][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[1][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N34) );
  \**SEQGEN**  \mem_reg[0][7]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][6]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][5]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][4]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][3]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][2]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][1]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  \**SEQGEN**  \mem_reg[0][0]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N25) );
  GTECH_AND2 C143 ( .A(wr_pnt[0]), .B(wr_pnt[1]), .Z(N41) );
  GTECH_AND2 C144 ( .A(N41), .B(wr_pnt[2]), .Z(N40) );
  GTECH_AND2 C145 ( .A(N0), .B(wr_pnt[1]), .Z(N42) );
  GTECH_NOT I_0 ( .A(wr_pnt[0]), .Z(N0) );
  GTECH_AND2 C146 ( .A(N42), .B(wr_pnt[2]), .Z(N39) );
  GTECH_AND2 C147 ( .A(wr_pnt[0]), .B(N1), .Z(N43) );
  GTECH_NOT I_1 ( .A(wr_pnt[1]), .Z(N1) );
  GTECH_AND2 C148 ( .A(N43), .B(wr_pnt[2]), .Z(N38) );
  GTECH_AND2 C149 ( .A(N2), .B(N3), .Z(N44) );
  GTECH_NOT I_2 ( .A(wr_pnt[0]), .Z(N2) );
  GTECH_NOT I_3 ( .A(wr_pnt[1]), .Z(N3) );
  GTECH_AND2 C150 ( .A(N44), .B(wr_pnt[2]), .Z(N37) );
  GTECH_AND2 C152 ( .A(N41), .B(N4), .Z(N36) );
  GTECH_NOT I_4 ( .A(wr_pnt[2]), .Z(N4) );
  GTECH_AND2 C154 ( .A(N42), .B(N5), .Z(N35) );
  GTECH_NOT I_5 ( .A(wr_pnt[2]), .Z(N5) );
  GTECH_AND2 C156 ( .A(N43), .B(N6), .Z(N34) );
  GTECH_NOT I_6 ( .A(wr_pnt[2]), .Z(N6) );
  GTECH_AND2 C158 ( .A(N44), .B(N7), .Z(N25) );
  GTECH_NOT I_7 ( .A(wr_pnt[2]), .Z(N7) );
  SELECT_OP C175 ( .DATA1(data_in), .DATA2({N17, N18, N19, N20, N21, N22, N23, 
        N24}), .CONTROL1(N8), .CONTROL2(N16), .Z({N33, N32, N31, N30, N29, N28, 
        N27, N26}) );
  GTECH_BUF B_0 ( .A(N15), .Z(N8) );
  MUX_OP C176 ( .D0({\mem[0][0] , \mem[0][1] , \mem[0][2] , \mem[0][3] , 
        \mem[0][4] , \mem[0][5] , \mem[0][6] , \mem[0][7] }), .D1({\mem[1][0] , 
        \mem[1][1] , \mem[1][2] , \mem[1][3] , \mem[1][4] , \mem[1][5] , 
        \mem[1][6] , \mem[1][7] }), .D2({\mem[2][0] , \mem[2][1] , \mem[2][2] , 
        \mem[2][3] , \mem[2][4] , \mem[2][5] , \mem[2][6] , \mem[2][7] }), 
        .D3({\mem[3][0] , \mem[3][1] , \mem[3][2] , \mem[3][3] , \mem[3][4] , 
        \mem[3][5] , \mem[3][6] , \mem[3][7] }), .D4({\mem[4][0] , \mem[4][1] , 
        \mem[4][2] , \mem[4][3] , \mem[4][4] , \mem[4][5] , \mem[4][6] , 
        \mem[4][7] }), .D5({\mem[5][0] , \mem[5][1] , \mem[5][2] , \mem[5][3] , 
        \mem[5][4] , \mem[5][5] , \mem[5][6] , \mem[5][7] }), .D6({\mem[6][0] , 
        \mem[6][1] , \mem[6][2] , \mem[6][3] , \mem[6][4] , \mem[6][5] , 
        \mem[6][6] , \mem[6][7] }), .D7({\mem[7][0] , \mem[7][1] , \mem[7][2] , 
        \mem[7][3] , \mem[7][4] , \mem[7][5] , \mem[7][6] , \mem[7][7] }), 
        .S0(N9), .S1(N10), .S2(N11), .Z({rd_mem_out[0], rd_mem_out[1], 
        rd_mem_out[2], rd_mem_out[3], rd_mem_out[4], rd_mem_out[5], 
        rd_mem_out[6], rd_mem_out[7]}) );
  GTECH_BUF B_1 ( .A(rd_pnt[0]), .Z(N9) );
  GTECH_BUF B_2 ( .A(rd_pnt[1]), .Z(N10) );
  GTECH_BUF B_3 ( .A(rd_pnt[2]), .Z(N11) );
  MUX_OP C177 ( .D0({\mem[0][0] , \mem[0][1] , \mem[0][2] , \mem[0][3] , 
        \mem[0][4] , \mem[0][5] , \mem[0][6] , \mem[0][7] }), .D1({\mem[1][0] , 
        \mem[1][1] , \mem[1][2] , \mem[1][3] , \mem[1][4] , \mem[1][5] , 
        \mem[1][6] , \mem[1][7] }), .D2({\mem[2][0] , \mem[2][1] , \mem[2][2] , 
        \mem[2][3] , \mem[2][4] , \mem[2][5] , \mem[2][6] , \mem[2][7] }), 
        .D3({\mem[3][0] , \mem[3][1] , \mem[3][2] , \mem[3][3] , \mem[3][4] , 
        \mem[3][5] , \mem[3][6] , \mem[3][7] }), .D4({\mem[4][0] , \mem[4][1] , 
        \mem[4][2] , \mem[4][3] , \mem[4][4] , \mem[4][5] , \mem[4][6] , 
        \mem[4][7] }), .D5({\mem[5][0] , \mem[5][1] , \mem[5][2] , \mem[5][3] , 
        \mem[5][4] , \mem[5][5] , \mem[5][6] , \mem[5][7] }), .D6({\mem[6][0] , 
        \mem[6][1] , \mem[6][2] , \mem[6][3] , \mem[6][4] , \mem[6][5] , 
        \mem[6][6] , \mem[6][7] }), .D7({\mem[7][0] , \mem[7][1] , \mem[7][2] , 
        \mem[7][3] , \mem[7][4] , \mem[7][5] , \mem[7][6] , \mem[7][7] }), 
        .S0(N12), .S1(N13), .S2(N14), .Z({N24, N23, N22, N21, N20, N19, N18, 
        N17}) );
  GTECH_BUF B_4 ( .A(wr_pnt[0]), .Z(N12) );
  GTECH_BUF B_5 ( .A(wr_pnt[1]), .Z(N13) );
  GTECH_BUF B_6 ( .A(wr_pnt[2]), .Z(N14) );
  GTECH_AND2 C180 ( .A(N45), .B(wr), .Z(N15) );
  GTECH_NOT I_8 ( .A(full), .Z(N45) );
  GTECH_NOT I_9 ( .A(N15), .Z(N16) );
endmodule


module empty_full ( wr_pnt, rd_pnt, rd_toggle, wr_toggle, empty, full );
  input [2:0] wr_pnt;
  input [2:0] rd_pnt;
  input rd_toggle, wr_toggle;
  output empty, full;
  wire   N0, N1, N2, N3;

  GTECH_XOR2 C4 ( .A(rd_toggle), .B(wr_toggle), .Z(N0) );
  GTECH_NOT I_0 ( .A(N0), .Z(N1) );
  EQ_UNS_OP eq_403_2 ( .A(rd_pnt), .B(wr_pnt), .Z(N2) );
  GTECH_XOR2 C6 ( .A(rd_toggle), .B(wr_toggle), .Z(N3) );
  GTECH_AND2 C10 ( .A(N1), .B(N2), .Z(empty) );
  GTECH_AND2 C11 ( .A(N3), .B(N2), .Z(full) );
endmodule


module read_pointer ( rd_clk, reset_n, rd, empty, rd_pnt, rd_toggle );
  output [2:0] rd_pnt;
  input rd_clk, reset_n, rd, empty;
  output rd_toggle;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, net200;

  \**SEQGEN**  rd_toggle_reg ( .clear(N0), .preset(1'b0), .next_state(N6), 
        .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), .Q(rd_toggle), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  \**SEQGEN**  \rd_pnt_reg[2]  ( .clear(N0), .preset(1'b0), .next_state(N5), 
        .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), .Q(rd_pnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  \**SEQGEN**  \rd_pnt_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(N4), 
        .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), .Q(rd_pnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  \**SEQGEN**  \rd_pnt_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(N3), 
        .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), .Q(rd_pnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  ADD_UNS_OP add_425 ( .A({rd_toggle, rd_pnt}), .B(1'b1), .Z({N6, N5, N4, N3})
         );
  GTECH_NOT I_0 ( .A(reset_n), .Z(N0) );
  GTECH_BUF B_0 ( .A(reset_n), .Z(N1) );
  GTECH_AND2 C37 ( .A(rd), .B(N7), .Z(N2) );
  GTECH_NOT I_1 ( .A(empty), .Z(N7) );
  GTECH_AND2 C41 ( .A(N1), .B(N2), .Z(net200) );
endmodule


module write_pointer ( wr_clk, reset_n, wr, full, wr_pnt, wr_toggle );
  output [2:0] wr_pnt;
  input wr_clk, reset_n, wr, full;
  output wr_toggle;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, net213;

  \**SEQGEN**  wr_toggle_reg ( .clear(N0), .preset(1'b0), .next_state(N6), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(wr_toggle), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  \**SEQGEN**  \wr_pnt_reg[2]  ( .clear(N0), .preset(1'b0), .next_state(N5), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(wr_pnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  \**SEQGEN**  \wr_pnt_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(N4), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(wr_pnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  \**SEQGEN**  \wr_pnt_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(N3), 
        .clocked_on(wr_clk), .data_in(1'b0), .enable(1'b0), .Q(wr_pnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N2) );
  ADD_UNS_OP add_448 ( .A({wr_toggle, wr_pnt}), .B(1'b1), .Z({N6, N5, N4, N3})
         );
  GTECH_NOT I_0 ( .A(reset_n), .Z(N0) );
  GTECH_BUF B_0 ( .A(reset_n), .Z(N1) );
  GTECH_AND2 C37 ( .A(wr), .B(N7), .Z(N2) );
  GTECH_NOT I_1 ( .A(full), .Z(N7) );
  GTECH_AND2 C41 ( .A(N1), .B(N2), .Z(net213) );
endmodule


module fifo ( wr_clk, rd_clk, reset_n, wr, rd, data_in, data_out, empty, full
 );
  input [7:0] data_in;
  output [7:0] data_out;
  input wr_clk, rd_clk, reset_n, wr, rd;
  output empty, full;
  wire   N0, wr_toggle, rd_toggle;
  wire   [7:0] rd_mem_out;
  wire   [2:0] rd_pnt;
  wire   [2:0] wr_pnt;

  \**SEQGEN**  \data_out_reg[7]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[7]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[7]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[6]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[6]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[6]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[5]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[5]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[5]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[4]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[4]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[4]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[3]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[3]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[3]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[2]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[2]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[1]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[1]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \data_out_reg[0]  ( .clear(N0), .preset(1'b0), .next_state(
        rd_mem_out[0]), .clocked_on(rd_clk), .data_in(1'b0), .enable(1'b0), 
        .Q(data_out[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  memory memory_0 ( .wr_clk(wr_clk), .wr_pnt(wr_pnt), .data_in(data_in), .wr(
        wr), .rd_pnt(rd_pnt), .full(full), .rd_mem_out(rd_mem_out) );
  empty_full empty_full_0 ( .wr_pnt(wr_pnt), .rd_pnt(rd_pnt), .rd_toggle(
        rd_toggle), .wr_toggle(wr_toggle), .empty(empty), .full(full) );
  read_pointer read_pointer_0 ( .rd_clk(rd_clk), .reset_n(reset_n), .rd(rd), 
        .empty(empty), .rd_pnt(rd_pnt), .rd_toggle(rd_toggle) );
  write_pointer write_pointer_0 ( .wr_clk(wr_clk), .reset_n(reset_n), .wr(wr), 
        .full(full), .wr_pnt(wr_pnt), .wr_toggle(wr_toggle) );
  GTECH_NOT I_0 ( .A(reset_n), .Z(N0) );
endmodule


module packet_sm ( clk_50, reset_n, shift_done, is_header_byte, is_data_byte
 );
  input clk_50, reset_n, shift_done;
  output is_header_byte, is_data_byte;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18;
  wire   [1:0] packet_sm_ps;
  wire   [2:0] packet_sm_ns;

  \**SEQGEN**  \packet_sm_ps_reg[2]  ( .clear(N9), .preset(1'b0), .next_state(
        packet_sm_ns[2]), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), 
        .Q(is_data_byte), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \packet_sm_ps_reg[1]  ( .clear(N9), .preset(1'b0), .next_state(
        packet_sm_ns[1]), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), 
        .Q(packet_sm_ps[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \packet_sm_ps_reg[0]  ( .clear(N9), .preset(1'b0), .next_state(
        packet_sm_ns[0]), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), 
        .Q(packet_sm_ps[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  GTECH_OR2 C74 ( .A(packet_sm_ps[1]), .B(is_data_byte), .Z(N16) );
  GTECH_OR2 C75 ( .A(packet_sm_ps[0]), .B(N16), .Z(N17) );
  GTECH_NOT I_0 ( .A(N17), .Z(N18) );
  GTECH_NOT I_1 ( .A(is_data_byte), .Z(N10) );
  GTECH_AND3 C78 ( .A(is_data_byte), .B(N0), .C(N1), .Z(N11) );
  GTECH_NOT I_2 ( .A(packet_sm_ps[0]), .Z(N0) );
  GTECH_NOT I_3 ( .A(packet_sm_ps[1]), .Z(N1) );
  GTECH_AND2 C79 ( .A(packet_sm_ps[0]), .B(N2), .Z(N12) );
  GTECH_NOT I_4 ( .A(packet_sm_ps[1]), .Z(N2) );
  GTECH_AND2 C80 ( .A(N3), .B(packet_sm_ps[1]), .Z(N13) );
  GTECH_NOT I_5 ( .A(packet_sm_ps[0]), .Z(N3) );
  GTECH_AND2 C81 ( .A(packet_sm_ps[0]), .B(packet_sm_ps[1]), .Z(N14) );
  SELECT_OP C82 ( .DATA1({shift_done, 1'b0, 1'b0}), .DATA2({1'b1, 1'b0, 
        shift_done}), .DATA3({1'b1, shift_done, N15}), .DATA4({1'b1, 1'b1, 
        shift_done}), .DATA5({N15, N15, N15}), .CONTROL1(N4), .CONTROL2(N5), 
        .CONTROL3(N6), .CONTROL4(N7), .CONTROL5(N8), .Z(packet_sm_ns) );
  GTECH_BUF B_0 ( .A(N10), .Z(N4) );
  GTECH_BUF B_1 ( .A(N11), .Z(N5) );
  GTECH_BUF B_2 ( .A(N12), .Z(N6) );
  GTECH_BUF B_3 ( .A(N13), .Z(N7) );
  GTECH_BUF B_4 ( .A(N14), .Z(N8) );
  GTECH_NOT I_6 ( .A(reset_n), .Z(N9) );
  GTECH_NOT I_7 ( .A(shift_done), .Z(N15) );
  GTECH_BUF B_5 ( .A(N18), .Z(is_header_byte) );
endmodule


module serialdata_to_parallel ( clk_50, data_ena, reset_n, serial_data, data, 
        shift_done );
  output [7:0] data;
  input clk_50, data_ena, reset_n, serial_data;
  output shift_done;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, net102;
  wire   [2:0] shift_cnt;

  \**SEQGEN**  \data_reg[7]  ( .clear(N2), .preset(1'b0), .next_state(
        serial_data), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(
        data[7]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[6]  ( .clear(N2), .preset(1'b0), .next_state(data[7]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[5]  ( .clear(N2), .preset(1'b0), .next_state(data[6]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[4]  ( .clear(N2), .preset(1'b0), .next_state(data[5]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[3]  ( .clear(N2), .preset(1'b0), .next_state(data[4]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[2]  ( .clear(N2), .preset(1'b0), .next_state(data[3]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[1]  ( .clear(N2), .preset(1'b0), .next_state(data[2]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \data_reg[0]  ( .clear(N2), .preset(1'b0), .next_state(data[1]), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(data[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(data_ena) );
  \**SEQGEN**  \shift_cnt_reg[3]  ( .clear(N2), .preset(1'b0), .next_state(N12), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(shift_done), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \shift_cnt_reg[2]  ( .clear(N2), .preset(1'b0), .next_state(N11), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(shift_cnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \shift_cnt_reg[1]  ( .clear(N2), .preset(1'b0), .next_state(N10), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(shift_cnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \shift_cnt_reg[0]  ( .clear(N2), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), .Q(shift_cnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  ADD_UNS_OP add_186 ( .A({shift_done, shift_cnt}), .B(1'b1), .Z({N8, N7, N6, 
        N5}) );
  SELECT_OP C69 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N8, N7, N6, N5}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N12, N11, N10, N9}) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  GTECH_BUF B_1 ( .A(data_ena), .Z(N1) );
  GTECH_NOT I_0 ( .A(reset_n), .Z(N2) );
  GTECH_NOT I_1 ( .A(data_ena), .Z(N3) );
  GTECH_BUF B_2 ( .A(reset_n), .Z(N4) );
  GTECH_AND2 C78 ( .A(N4), .B(data_ena), .Z(net102) );
endmodule


module packet_type ( clk_50, reset_n, data, is_header_byte, 
        is_temperature_packet );
  input [7:0] data;
  input clk_50, reset_n, is_header_byte;
  output is_temperature_packet;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23;

  \**SEQGEN**  is_temperature_packet_reg ( .clear(N0), .preset(1'b0), 
        .next_state(N1), .clocked_on(clk_50), .data_in(1'b0), .enable(1'b0), 
        .Q(is_temperature_packet), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(is_header_byte) );
  GTECH_NOT I_0 ( .A(data[7]), .Z(N2) );
  GTECH_NOT I_1 ( .A(data[5]), .Z(N3) );
  GTECH_NOT I_2 ( .A(data[2]), .Z(N4) );
  GTECH_NOT I_3 ( .A(data[0]), .Z(N5) );
  GTECH_OR2 C24 ( .A(data[6]), .B(N2), .Z(N6) );
  GTECH_OR2 C25 ( .A(N3), .B(N6), .Z(N7) );
  GTECH_OR2 C26 ( .A(data[4]), .B(N7), .Z(N8) );
  GTECH_OR2 C27 ( .A(data[3]), .B(N8), .Z(N9) );
  GTECH_OR2 C28 ( .A(N4), .B(N9), .Z(N10) );
  GTECH_OR2 C29 ( .A(data[1]), .B(N10), .Z(N11) );
  GTECH_OR2 C30 ( .A(N5), .B(N11), .Z(N12) );
  GTECH_NOT I_4 ( .A(N12), .Z(N13) );
  GTECH_NOT I_5 ( .A(data[6]), .Z(N14) );
  GTECH_NOT I_6 ( .A(data[1]), .Z(N15) );
  GTECH_OR2 C36 ( .A(N14), .B(N2), .Z(N16) );
  GTECH_OR2 C37 ( .A(data[5]), .B(N16), .Z(N17) );
  GTECH_OR2 C38 ( .A(data[4]), .B(N17), .Z(N18) );
  GTECH_OR2 C39 ( .A(data[3]), .B(N18), .Z(N19) );
  GTECH_OR2 C40 ( .A(data[2]), .B(N19), .Z(N20) );
  GTECH_OR2 C41 ( .A(N15), .B(N20), .Z(N21) );
  GTECH_OR2 C42 ( .A(N5), .B(N21), .Z(N22) );
  GTECH_NOT I_7 ( .A(N22), .Z(N23) );
  GTECH_NOT I_8 ( .A(reset_n), .Z(N0) );
  GTECH_OR2 C49 ( .A(N13), .B(N23), .Z(N1) );
endmodule


module averager_controller ( clk_2, reset_n, fifo_empty, fifo_rd, averager_add, 
        averager_avg, ram_wr_n, averager_clr );
  input clk_2, reset_n, fifo_empty;
  output fifo_rd, averager_add, averager_avg, ram_wr_n, averager_clr;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, net115;
  wire   [2:0] averager_sm_ps;
  wire   [2:0] averager_sm_ns;
  wire   [2:0] add_cnt;

  \**SEQGEN**  \averager_sm_ps_reg[2]  ( .clear(N3), .preset(1'b0), 
        .next_state(averager_sm_ns[2]), .clocked_on(clk_2), .data_in(1'b0), 
        .enable(1'b0), .Q(averager_sm_ps[2]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \averager_sm_ps_reg[1]  ( .clear(N3), .preset(1'b0), 
        .next_state(averager_sm_ns[1]), .clocked_on(clk_2), .data_in(1'b0), 
        .enable(1'b0), .Q(averager_sm_ps[1]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \averager_sm_ps_reg[0]  ( .clear(N3), .preset(1'b0), 
        .next_state(averager_sm_ns[0]), .clocked_on(clk_2), .data_in(1'b0), 
        .enable(1'b0), .Q(averager_sm_ps[0]), .synch_clear(1'b0), 
        .synch_preset(1'b0), .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \add_cnt_reg[2]  ( .clear(N3), .preset(1'b0), .next_state(N29), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(add_cnt[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \add_cnt_reg[1]  ( .clear(N3), .preset(1'b0), .next_state(N28), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(add_cnt[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  \**SEQGEN**  \add_cnt_reg[0]  ( .clear(N3), .preset(1'b0), .next_state(N27), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(add_cnt[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N30) );
  GTECH_AND2 C96 ( .A(averager_sm_ps[1]), .B(averager_sm_ps[2]), .Z(N31) );
  GTECH_AND2 C97 ( .A(averager_sm_ps[0]), .B(N31), .Z(N32) );
  GTECH_OR2 C98 ( .A(averager_sm_ps[1]), .B(averager_sm_ps[2]), .Z(N33) );
  GTECH_OR2 C99 ( .A(averager_sm_ps[0]), .B(N33), .Z(N34) );
  GTECH_NOT I_0 ( .A(N34), .Z(N35) );
  GTECH_NOT I_1 ( .A(averager_sm_ps[1]), .Z(N36) );
  GTECH_OR2 C102 ( .A(N36), .B(averager_sm_ps[2]), .Z(N37) );
  GTECH_OR2 C103 ( .A(averager_sm_ps[0]), .B(N37), .Z(N38) );
  GTECH_NOT I_2 ( .A(N38), .Z(N39) );
  GTECH_NOT I_3 ( .A(add_cnt[2]), .Z(N40) );
  GTECH_OR2 C106 ( .A(add_cnt[1]), .B(N40), .Z(N41) );
  GTECH_OR2 C107 ( .A(add_cnt[0]), .B(N41), .Z(N42) );
  GTECH_NOT I_4 ( .A(N42), .Z(N43) );
  ADD_UNS_OP add_256 ( .A(add_cnt), .B(1'b1), .Z({N26, N25, N24}) );
  SELECT_OP C112 ( .DATA1({1'b1, 1'b0, 1'b0}), .DATA2({1'b0, 1'b0, 1'b1}), 
        .DATA3({1'b0, 1'b1, 1'b1}), .CONTROL1(N0), .CONTROL2(N21), .CONTROL3(
        N17), .Z({N20, N19, N18}) );
  GTECH_BUF B_0 ( .A(N43), .Z(N0) );
  SELECT_OP C113 ( .DATA1({1'b0, 1'b0, N4}), .DATA2({1'b0, 1'b1, 1'b0}), 
        .DATA3({1'b0, 1'b1, 1'b1}), .DATA4({N20, N19, N18}), .DATA5({1'b1, 
        1'b1, 1'b1}), .DATA6({1'b0, 1'b0, 1'b0}), .CONTROL1(N10), .CONTROL2(
        N11), .CONTROL3(N12), .CONTROL4(N13), .CONTROL5(N14), .CONTROL6(N15), 
        .Z(averager_sm_ns) );
  SELECT_OP C114 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({N26, N25, N24}), 
        .CONTROL1(N1), .CONTROL2(N2), .Z({N29, N28, N27}) );
  GTECH_BUF B_1 ( .A(N35), .Z(N1) );
  GTECH_BUF B_2 ( .A(N39), .Z(N2) );
  GTECH_NOT I_5 ( .A(N32), .Z(ram_wr_n) );
  GTECH_NOT I_6 ( .A(reset_n), .Z(N3) );
  GTECH_NOT I_7 ( .A(fifo_empty), .Z(N4) );
  GTECH_NOT I_8 ( .A(averager_sm_ps[2]), .Z(N5) );
  GTECH_NOT I_9 ( .A(averager_sm_ps[1]), .Z(N6) );
  GTECH_AND2 C122 ( .A(N5), .B(N6), .Z(N7) );
  GTECH_NOT I_10 ( .A(averager_sm_ps[0]), .Z(N8) );
  GTECH_AND2 C124 ( .A(N5), .B(averager_sm_ps[1]), .Z(N9) );
  GTECH_AND2 C125 ( .A(N7), .B(N8), .Z(N10) );
  GTECH_AND2 C126 ( .A(N7), .B(averager_sm_ps[0]), .Z(N11) );
  GTECH_AND2 C127 ( .A(N9), .B(N8), .Z(N12) );
  GTECH_AND2 C128 ( .A(N9), .B(averager_sm_ps[0]), .Z(N13) );
  GTECH_AND2 C129 ( .A(averager_sm_ps[2]), .B(N6), .Z(N14) );
  GTECH_AND2 C130 ( .A(averager_sm_ps[2]), .B(averager_sm_ps[1]), .Z(N15) );
  GTECH_OR2 C139 ( .A(N4), .B(N43), .Z(N16) );
  GTECH_NOT I_11 ( .A(N16), .Z(N17) );
  GTECH_AND2 C142 ( .A(N4), .B(N42), .Z(N21) );
  GTECH_BUF B_3 ( .A(reset_n), .Z(N22) );
  GTECH_OR2 C145 ( .A(averager_sm_ps[2]), .B(averager_sm_ps[0]), .Z(N23) );
  GTECH_AND2 C149 ( .A(N22), .B(N39), .Z(net115) );
  GTECH_AND2 C150 ( .A(N45), .B(averager_sm_ps[0]), .Z(fifo_rd) );
  GTECH_AND2 C151 ( .A(N44), .B(N36), .Z(N45) );
  GTECH_NOT I_12 ( .A(averager_sm_ps[2]), .Z(N44) );
  GTECH_AND2 C154 ( .A(N46), .B(N47), .Z(averager_add) );
  GTECH_AND2 C155 ( .A(N44), .B(averager_sm_ps[1]), .Z(N46) );
  GTECH_NOT I_13 ( .A(averager_sm_ps[0]), .Z(N47) );
  GTECH_AND2 C158 ( .A(N48), .B(N47), .Z(averager_avg) );
  GTECH_AND2 C159 ( .A(averager_sm_ps[2]), .B(N36), .Z(N48) );
  GTECH_AND2 C163 ( .A(N49), .B(N47), .Z(averager_clr) );
  GTECH_AND2 C164 ( .A(N44), .B(N36), .Z(N49) );
  GTECH_NOT I_14 ( .A(N23), .Z(N30) );
endmodule


module averager ( clk_2, reset_n, averager_clr, averager_add, averager_avg, 
        fifo_data, ram_data );
  input [7:0] fifo_data;
  output [7:0] ram_data;
  input clk_2, reset_n, averager_clr, averager_add, averager_avg;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, net126;
  wire   [9:8] temp_reg;

  \**SEQGEN**  \temp_reg_reg[9]  ( .clear(N1), .preset(1'b0), .next_state(N25), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(temp_reg[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[8]  ( .clear(N1), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(temp_reg[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[7]  ( .clear(N1), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[6]  ( .clear(N1), .preset(1'b0), .next_state(N22), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[5]  ( .clear(N1), .preset(1'b0), .next_state(N21), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[4]  ( .clear(N1), .preset(1'b0), .next_state(N20), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[3]  ( .clear(N1), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[2]  ( .clear(N1), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[1]  ( .clear(N1), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  \**SEQGEN**  \temp_reg_reg[0]  ( .clear(N1), .preset(1'b0), .next_state(N16), 
        .clocked_on(clk_2), .data_in(1'b0), .enable(1'b0), .Q(ram_data[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N4) );
  ADD_UNS_OP add_295 ( .A(fifo_data), .B({temp_reg, ram_data}), .Z({N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6}) );
  SELECT_OP C79 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .DATA2({N15, N14, N13, N12, N11, N10, N9, N8, N7, N6}), 
        .DATA3({1'b0, 1'b0, temp_reg, ram_data[7:2]}), .CONTROL1(N0), 
        .CONTROL2(N27), .CONTROL3(N30), .Z({N25, N24, N23, N22, N21, N20, N19, 
        N18, N17, N16}) );
  GTECH_BUF B_0 ( .A(averager_clr), .Z(N0) );
  GTECH_NOT I_0 ( .A(reset_n), .Z(N1) );
  GTECH_BUF B_1 ( .A(reset_n), .Z(N2) );
  GTECH_OR2 C88 ( .A(averager_add), .B(averager_clr), .Z(N3) );
  GTECH_OR2 C89 ( .A(averager_avg), .B(N3), .Z(N4) );
  GTECH_AND2 C91 ( .A(N2), .B(N27), .Z(N5) );
  GTECH_NOT I_1 ( .A(averager_clr), .Z(N26) );
  GTECH_AND2 C93 ( .A(averager_add), .B(N26), .Z(N27) );
  GTECH_AND2 C94 ( .A(N5), .B(N26), .Z(net126) );
  GTECH_NOT I_2 ( .A(averager_add), .Z(N28) );
  GTECH_AND2 C96 ( .A(N26), .B(N28), .Z(N29) );
  GTECH_AND2 C97 ( .A(averager_avg), .B(N29), .Z(N30) );
endmodule


module ram_addr_controller ( ram_wr_n, reset_n, ram_addr );
  output [10:0] ram_addr;
  input ram_wr_n, reset_n;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, net158;

  \**SEQGEN**  \ram_addr_reg[10]  ( .clear(1'b0), .preset(N2), .next_state(N25), .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[9]  ( .clear(1'b0), .preset(N2), .next_state(N24), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[8]  ( .clear(1'b0), .preset(N2), .next_state(N23), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[7]  ( .clear(1'b0), .preset(N2), .next_state(N22), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[6]  ( .clear(1'b0), .preset(N2), .next_state(N21), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[5]  ( .clear(1'b0), .preset(N2), .next_state(N20), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[4]  ( .clear(1'b0), .preset(N2), .next_state(N19), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[3]  ( .clear(1'b0), .preset(N2), .next_state(N18), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[2]  ( .clear(1'b0), .preset(N2), .next_state(N17), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[1]  ( .clear(1'b0), .preset(N2), .next_state(N16), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \ram_addr_reg[0]  ( .clear(1'b0), .preset(N2), .next_state(N15), 
        .clocked_on(ram_wr_n), .data_in(1'b0), .enable(1'b0), .Q(ram_addr[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  GTECH_OR2 C47 ( .A(ram_addr[9]), .B(ram_addr[10]), .Z(N26) );
  GTECH_OR2 C48 ( .A(ram_addr[8]), .B(N26), .Z(N27) );
  GTECH_OR2 C49 ( .A(ram_addr[7]), .B(N27), .Z(N28) );
  GTECH_OR2 C50 ( .A(ram_addr[6]), .B(N28), .Z(N29) );
  GTECH_OR2 C51 ( .A(ram_addr[5]), .B(N29), .Z(N30) );
  GTECH_OR2 C52 ( .A(ram_addr[4]), .B(N30), .Z(N31) );
  GTECH_OR2 C53 ( .A(ram_addr[3]), .B(N31), .Z(N32) );
  GTECH_OR2 C54 ( .A(ram_addr[2]), .B(N32), .Z(N33) );
  GTECH_OR2 C55 ( .A(ram_addr[1]), .B(N33), .Z(N34) );
  GTECH_OR2 C56 ( .A(ram_addr[0]), .B(N34), .Z(N35) );
  GTECH_NOT I_0 ( .A(N35), .Z(N36) );
  SUB_UNS_OP sub_319 ( .A(ram_addr), .B(1'b1), .Z({N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4}) );
  SELECT_OP C58 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1}), .DATA2({N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4}), .CONTROL1(N0), .CONTROL2(N1), .Z({N25, N24, N23, N22, N21, N20, N19, N18, 
        N17, N16, N15}) );
  GTECH_BUF B_0 ( .A(N36), .Z(N0) );
  GTECH_BUF B_1 ( .A(N35), .Z(N1) );
  GTECH_NOT I_1 ( .A(reset_n), .Z(N2) );
  GTECH_BUF B_2 ( .A(reset_n), .Z(N3) );
  GTECH_AND2 C66 ( .A(N3), .B(N35), .Z(net158) );
endmodule


module tas ( clk_50, clk_2, reset_n, serial_data, data_ena, ram_wr_n, ram_data, 
        ram_addr );
  output [7:0] ram_data;
  output [10:0] ram_addr;
  input clk_50, clk_2, reset_n, serial_data, data_ena;
  output ram_wr_n;
  wire   is_data_byte, is_temperature_packet, shift_done, fifo_wr, fifo_rd,
         fifo_empty, fifo_full, is_header_byte, averager_clr, averager_avg,
         averager_add, N0;
  wire   [7:0] data;
  wire   [7:0] fifo_data;

  fifo fifo1 ( .wr_clk(clk_50), .rd_clk(clk_2), .reset_n(reset_n), .wr(fifo_wr), .rd(fifo_rd), .data_in(data), .data_out(fifo_data), .empty(fifo_empty), 
        .full(fifo_full) );
  packet_sm packet_sm1 ( .clk_50(clk_50), .reset_n(reset_n), .shift_done(
        shift_done), .is_header_byte(is_header_byte), .is_data_byte(
        is_data_byte) );
  serialdata_to_parallel serialdata_to_parallel1 ( .clk_50(clk_50), .data_ena(
        data_ena), .reset_n(reset_n), .serial_data(serial_data), .data(data), 
        .shift_done(shift_done) );
  packet_type packet_type1 ( .clk_50(clk_50), .reset_n(reset_n), .data(data), 
        .is_header_byte(is_header_byte), .is_temperature_packet(
        is_temperature_packet) );
  averager_controller averager_controller1 ( .clk_2(clk_2), .reset_n(reset_n), 
        .fifo_empty(fifo_empty), .fifo_rd(fifo_rd), .averager_add(averager_add), .averager_avg(averager_avg), .ram_wr_n(ram_wr_n), .averager_clr(averager_clr) );
  averager averager1 ( .clk_2(clk_2), .reset_n(reset_n), .averager_clr(
        averager_clr), .averager_add(averager_add), .averager_avg(averager_avg), .fifo_data(fifo_data), .ram_data(ram_data) );
  ram_addr_controller ram_addr_controller1 ( .ram_wr_n(ram_wr_n), .reset_n(
        reset_n), .ram_addr(ram_addr) );
  GTECH_AND2 C7 ( .A(N0), .B(shift_done), .Z(fifo_wr) );
  GTECH_AND2 C8 ( .A(is_data_byte), .B(is_temperature_packet), .Z(N0) );
endmodule

