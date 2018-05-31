/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Mon May 28 06:26:20 2018
/////////////////////////////////////////////////////////////


module testing ( wr_clk, wr_pnt, data_in, wr, rd_pnt, full, rd_mem_out );
  input [2:0] wr_pnt;
  input [7:0] data_in;
  input [2:0] rd_pnt;
  output [7:0] rd_mem_out;
  input wr_clk, wr, full;
  wire   N9, N10, N11, N12, N13, N14, \mem[7][7] , \mem[7][6] , \mem[7][5] ,
         \mem[7][4] , \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] ,
         \mem[6][7] , \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] ,
         \mem[6][2] , \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] ,
         \mem[5][5] , \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] ,
         \mem[5][0] , \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] ,
         \mem[4][3] , \mem[4][2] , \mem[4][1] , \mem[4][0] , \mem[3][7] ,
         \mem[3][6] , \mem[3][5] , \mem[3][4] , \mem[3][3] , \mem[3][2] ,
         \mem[3][1] , \mem[3][0] , \mem[2][7] , \mem[2][6] , \mem[2][5] ,
         \mem[2][4] , \mem[2][3] , \mem[2][2] , \mem[2][1] , \mem[2][0] ,
         \mem[1][7] , \mem[1][6] , \mem[1][5] , \mem[1][4] , \mem[1][3] ,
         \mem[1][2] , \mem[1][1] , \mem[1][0] , \mem[0][7] , \mem[0][6] ,
         \mem[0][5] , \mem[0][4] , \mem[0][3] , \mem[0][2] , \mem[0][1] ,
         \mem[0][0] , N17, N18, N19, N20, N21, N22, N23, N24, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193;
  assign N9 = rd_pnt[0];
  assign N10 = rd_pnt[1];
  assign N11 = rd_pnt[2];
  assign N12 = wr_pnt[0];
  assign N13 = wr_pnt[1];
  assign N14 = wr_pnt[2];

  DFFX1 \mem_reg[1][7]  ( .D(n49), .CLK(wr_clk), .Q(\mem[1][7] ) );
  DFFX1 \mem_reg[1][6]  ( .D(n48), .CLK(wr_clk), .Q(\mem[1][6] ) );
  DFFX1 \mem_reg[1][5]  ( .D(n47), .CLK(wr_clk), .Q(\mem[1][5] ) );
  DFFX1 \mem_reg[1][4]  ( .D(n46), .CLK(wr_clk), .Q(\mem[1][4] ) );
  DFFX1 \mem_reg[1][3]  ( .D(n45), .CLK(wr_clk), .Q(\mem[1][3] ) );
  DFFX1 \mem_reg[1][2]  ( .D(n44), .CLK(wr_clk), .Q(\mem[1][2] ) );
  DFFX1 \mem_reg[1][1]  ( .D(n43), .CLK(wr_clk), .Q(\mem[1][1] ) );
  DFFX1 \mem_reg[1][0]  ( .D(n42), .CLK(wr_clk), .Q(\mem[1][0] ) );
  DFFX1 \mem_reg[0][7]  ( .D(n41), .CLK(wr_clk), .Q(\mem[0][7] ) );
  DFFX1 \mem_reg[0][6]  ( .D(n40), .CLK(wr_clk), .Q(\mem[0][6] ) );
  DFFX1 \mem_reg[0][5]  ( .D(n39), .CLK(wr_clk), .Q(\mem[0][5] ) );
  DFFX1 \mem_reg[0][4]  ( .D(n38), .CLK(wr_clk), .Q(\mem[0][4] ) );
  DFFX1 \mem_reg[0][3]  ( .D(n37), .CLK(wr_clk), .Q(\mem[0][3] ) );
  DFFX1 \mem_reg[0][2]  ( .D(n36), .CLK(wr_clk), .Q(\mem[0][2] ) );
  DFFX1 \mem_reg[0][1]  ( .D(n35), .CLK(wr_clk), .Q(\mem[0][1] ) );
  DFFX1 \mem_reg[0][0]  ( .D(n34), .CLK(wr_clk), .Q(\mem[0][0] ) );
  DFFX1 \mem_reg[3][7]  ( .D(n65), .CLK(wr_clk), .Q(\mem[3][7] ) );
  DFFX1 \mem_reg[3][6]  ( .D(n64), .CLK(wr_clk), .Q(\mem[3][6] ) );
  DFFX1 \mem_reg[3][5]  ( .D(n63), .CLK(wr_clk), .Q(\mem[3][5] ) );
  DFFX1 \mem_reg[3][4]  ( .D(n62), .CLK(wr_clk), .Q(\mem[3][4] ) );
  DFFX1 \mem_reg[3][3]  ( .D(n61), .CLK(wr_clk), .Q(\mem[3][3] ) );
  DFFX1 \mem_reg[3][2]  ( .D(n60), .CLK(wr_clk), .Q(\mem[3][2] ) );
  DFFX1 \mem_reg[3][1]  ( .D(n59), .CLK(wr_clk), .Q(\mem[3][1] ) );
  DFFX1 \mem_reg[3][0]  ( .D(n58), .CLK(wr_clk), .Q(\mem[3][0] ) );
  DFFX1 \mem_reg[2][7]  ( .D(n57), .CLK(wr_clk), .Q(\mem[2][7] ) );
  DFFX1 \mem_reg[2][6]  ( .D(n56), .CLK(wr_clk), .Q(\mem[2][6] ) );
  DFFX1 \mem_reg[2][5]  ( .D(n55), .CLK(wr_clk), .Q(\mem[2][5] ) );
  DFFX1 \mem_reg[2][4]  ( .D(n54), .CLK(wr_clk), .Q(\mem[2][4] ) );
  DFFX1 \mem_reg[2][3]  ( .D(n53), .CLK(wr_clk), .Q(\mem[2][3] ) );
  DFFX1 \mem_reg[2][2]  ( .D(n52), .CLK(wr_clk), .Q(\mem[2][2] ) );
  DFFX1 \mem_reg[2][1]  ( .D(n51), .CLK(wr_clk), .Q(\mem[2][1] ) );
  DFFX1 \mem_reg[2][0]  ( .D(n50), .CLK(wr_clk), .Q(\mem[2][0] ) );
  DFFX1 \mem_reg[7][7]  ( .D(n97), .CLK(wr_clk), .Q(\mem[7][7] ) );
  DFFX1 \mem_reg[7][6]  ( .D(n96), .CLK(wr_clk), .Q(\mem[7][6] ) );
  DFFX1 \mem_reg[7][5]  ( .D(n95), .CLK(wr_clk), .Q(\mem[7][5] ) );
  DFFX1 \mem_reg[7][4]  ( .D(n94), .CLK(wr_clk), .Q(\mem[7][4] ) );
  DFFX1 \mem_reg[7][3]  ( .D(n93), .CLK(wr_clk), .Q(\mem[7][3] ) );
  DFFX1 \mem_reg[7][2]  ( .D(n92), .CLK(wr_clk), .Q(\mem[7][2] ) );
  DFFX1 \mem_reg[7][1]  ( .D(n91), .CLK(wr_clk), .Q(\mem[7][1] ) );
  DFFX1 \mem_reg[7][0]  ( .D(n90), .CLK(wr_clk), .Q(\mem[7][0] ) );
  DFFX1 \mem_reg[6][7]  ( .D(n89), .CLK(wr_clk), .Q(\mem[6][7] ) );
  DFFX1 \mem_reg[6][6]  ( .D(n88), .CLK(wr_clk), .Q(\mem[6][6] ) );
  DFFX1 \mem_reg[6][5]  ( .D(n87), .CLK(wr_clk), .Q(\mem[6][5] ) );
  DFFX1 \mem_reg[6][4]  ( .D(n86), .CLK(wr_clk), .Q(\mem[6][4] ) );
  DFFX1 \mem_reg[6][3]  ( .D(n85), .CLK(wr_clk), .Q(\mem[6][3] ) );
  DFFX1 \mem_reg[6][2]  ( .D(n84), .CLK(wr_clk), .Q(\mem[6][2] ) );
  DFFX1 \mem_reg[6][1]  ( .D(n83), .CLK(wr_clk), .Q(\mem[6][1] ) );
  DFFX1 \mem_reg[6][0]  ( .D(n82), .CLK(wr_clk), .Q(\mem[6][0] ) );
  DFFX1 \mem_reg[5][7]  ( .D(n81), .CLK(wr_clk), .Q(\mem[5][7] ) );
  DFFX1 \mem_reg[5][6]  ( .D(n80), .CLK(wr_clk), .Q(\mem[5][6] ) );
  DFFX1 \mem_reg[5][5]  ( .D(n79), .CLK(wr_clk), .Q(\mem[5][5] ) );
  DFFX1 \mem_reg[5][4]  ( .D(n78), .CLK(wr_clk), .Q(\mem[5][4] ) );
  DFFX1 \mem_reg[5][3]  ( .D(n77), .CLK(wr_clk), .Q(\mem[5][3] ) );
  DFFX1 \mem_reg[5][2]  ( .D(n76), .CLK(wr_clk), .Q(\mem[5][2] ) );
  DFFX1 \mem_reg[5][1]  ( .D(n75), .CLK(wr_clk), .Q(\mem[5][1] ) );
  DFFX1 \mem_reg[5][0]  ( .D(n74), .CLK(wr_clk), .Q(\mem[5][0] ) );
  DFFX1 \mem_reg[4][7]  ( .D(n73), .CLK(wr_clk), .Q(\mem[4][7] ) );
  DFFX1 \mem_reg[4][6]  ( .D(n72), .CLK(wr_clk), .Q(\mem[4][6] ) );
  DFFX1 \mem_reg[4][5]  ( .D(n71), .CLK(wr_clk), .Q(\mem[4][5] ) );
  DFFX1 \mem_reg[4][4]  ( .D(n70), .CLK(wr_clk), .Q(\mem[4][4] ) );
  DFFX1 \mem_reg[4][3]  ( .D(n69), .CLK(wr_clk), .Q(\mem[4][3] ) );
  DFFX1 \mem_reg[4][2]  ( .D(n68), .CLK(wr_clk), .Q(\mem[4][2] ) );
  DFFX1 \mem_reg[4][1]  ( .D(n67), .CLK(wr_clk), .Q(\mem[4][1] ) );
  DFFX1 \mem_reg[4][0]  ( .D(n66), .CLK(wr_clk), .Q(\mem[4][0] ) );
  INVX0 U99 ( .IN(N12), .QN(n173) );
  INVX0 U100 ( .IN(N9), .QN(n134) );
  INVX0 U101 ( .IN(N10), .QN(n135) );
  INVX0 U102 ( .IN(N14), .QN(n174) );
  INVX0 U103 ( .IN(N11), .QN(n136) );
  NOR2X0 U104 ( .IN1(n136), .IN2(N10), .QN(n131) );
  NOR2X0 U105 ( .IN1(n136), .IN2(n135), .QN(n130) );
  NOR2X0 U106 ( .IN1(n135), .IN2(N11), .QN(n128) );
  NOR2X0 U107 ( .IN1(N10), .IN2(N11), .QN(n127) );
  AO22X1 U108 ( .IN1(\mem[3][0] ), .IN2(n128), .IN3(\mem[1][0] ), .IN4(n127), 
        .Q(n98) );
  AO221X1 U109 ( .IN1(\mem[5][0] ), .IN2(n131), .IN3(\mem[7][0] ), .IN4(n130), 
        .IN5(n98), .Q(n101) );
  AO22X1 U110 ( .IN1(\mem[2][0] ), .IN2(n128), .IN3(\mem[0][0] ), .IN4(n127), 
        .Q(n99) );
  AO221X1 U111 ( .IN1(\mem[4][0] ), .IN2(n131), .IN3(\mem[6][0] ), .IN4(n130), 
        .IN5(n99), .Q(n100) );
  AO22X1 U112 ( .IN1(n101), .IN2(N9), .IN3(n100), .IN4(n134), .Q(rd_mem_out[0]) );
  AO22X1 U113 ( .IN1(\mem[3][1] ), .IN2(n128), .IN3(\mem[1][1] ), .IN4(n127), 
        .Q(n102) );
  AO221X1 U114 ( .IN1(\mem[5][1] ), .IN2(n131), .IN3(\mem[7][1] ), .IN4(n130), 
        .IN5(n102), .Q(n105) );
  AO22X1 U115 ( .IN1(\mem[2][1] ), .IN2(n128), .IN3(\mem[0][1] ), .IN4(n127), 
        .Q(n103) );
  AO221X1 U116 ( .IN1(\mem[4][1] ), .IN2(n131), .IN3(\mem[6][1] ), .IN4(n130), 
        .IN5(n103), .Q(n104) );
  AO22X1 U117 ( .IN1(n105), .IN2(N9), .IN3(n104), .IN4(n134), .Q(rd_mem_out[1]) );
  AO22X1 U118 ( .IN1(\mem[3][2] ), .IN2(n128), .IN3(\mem[1][2] ), .IN4(n127), 
        .Q(n106) );
  AO221X1 U119 ( .IN1(\mem[5][2] ), .IN2(n131), .IN3(\mem[7][2] ), .IN4(n130), 
        .IN5(n106), .Q(n109) );
  AO22X1 U120 ( .IN1(\mem[2][2] ), .IN2(n128), .IN3(\mem[0][2] ), .IN4(n127), 
        .Q(n107) );
  AO221X1 U121 ( .IN1(\mem[4][2] ), .IN2(n131), .IN3(\mem[6][2] ), .IN4(n130), 
        .IN5(n107), .Q(n108) );
  AO22X1 U122 ( .IN1(n109), .IN2(N9), .IN3(n108), .IN4(n134), .Q(rd_mem_out[2]) );
  AO22X1 U123 ( .IN1(\mem[3][3] ), .IN2(n128), .IN3(\mem[1][3] ), .IN4(n127), 
        .Q(n110) );
  AO221X1 U124 ( .IN1(\mem[5][3] ), .IN2(n131), .IN3(\mem[7][3] ), .IN4(n130), 
        .IN5(n110), .Q(n113) );
  AO22X1 U125 ( .IN1(\mem[2][3] ), .IN2(n128), .IN3(\mem[0][3] ), .IN4(n127), 
        .Q(n111) );
  AO221X1 U126 ( .IN1(\mem[4][3] ), .IN2(n131), .IN3(\mem[6][3] ), .IN4(n130), 
        .IN5(n111), .Q(n112) );
  AO22X1 U127 ( .IN1(n113), .IN2(N9), .IN3(n112), .IN4(n134), .Q(rd_mem_out[3]) );
  AO22X1 U128 ( .IN1(\mem[3][4] ), .IN2(n128), .IN3(\mem[1][4] ), .IN4(n127), 
        .Q(n114) );
  AO221X1 U129 ( .IN1(\mem[5][4] ), .IN2(n131), .IN3(\mem[7][4] ), .IN4(n130), 
        .IN5(n114), .Q(n117) );
  AO22X1 U130 ( .IN1(\mem[2][4] ), .IN2(n128), .IN3(\mem[0][4] ), .IN4(n127), 
        .Q(n115) );
  AO221X1 U131 ( .IN1(\mem[4][4] ), .IN2(n131), .IN3(\mem[6][4] ), .IN4(n130), 
        .IN5(n115), .Q(n116) );
  AO22X1 U132 ( .IN1(n117), .IN2(N9), .IN3(n116), .IN4(n134), .Q(rd_mem_out[4]) );
  AO22X1 U133 ( .IN1(\mem[3][5] ), .IN2(n128), .IN3(\mem[1][5] ), .IN4(n127), 
        .Q(n118) );
  AO221X1 U134 ( .IN1(\mem[5][5] ), .IN2(n131), .IN3(\mem[7][5] ), .IN4(n130), 
        .IN5(n118), .Q(n121) );
  AO22X1 U135 ( .IN1(\mem[2][5] ), .IN2(n128), .IN3(\mem[0][5] ), .IN4(n127), 
        .Q(n119) );
  AO221X1 U136 ( .IN1(\mem[4][5] ), .IN2(n131), .IN3(\mem[6][5] ), .IN4(n130), 
        .IN5(n119), .Q(n120) );
  AO22X1 U137 ( .IN1(n121), .IN2(N9), .IN3(n120), .IN4(n134), .Q(rd_mem_out[5]) );
  AO22X1 U138 ( .IN1(\mem[3][6] ), .IN2(n128), .IN3(\mem[1][6] ), .IN4(n127), 
        .Q(n122) );
  AO221X1 U139 ( .IN1(\mem[5][6] ), .IN2(n131), .IN3(\mem[7][6] ), .IN4(n130), 
        .IN5(n122), .Q(n125) );
  AO22X1 U140 ( .IN1(\mem[2][6] ), .IN2(n128), .IN3(\mem[0][6] ), .IN4(n127), 
        .Q(n123) );
  AO221X1 U141 ( .IN1(\mem[4][6] ), .IN2(n131), .IN3(\mem[6][6] ), .IN4(n130), 
        .IN5(n123), .Q(n124) );
  AO22X1 U142 ( .IN1(n125), .IN2(N9), .IN3(n124), .IN4(n134), .Q(rd_mem_out[6]) );
  AO22X1 U143 ( .IN1(\mem[3][7] ), .IN2(n128), .IN3(\mem[1][7] ), .IN4(n127), 
        .Q(n126) );
  AO221X1 U144 ( .IN1(\mem[5][7] ), .IN2(n131), .IN3(\mem[7][7] ), .IN4(n130), 
        .IN5(n126), .Q(n133) );
  AO22X1 U145 ( .IN1(\mem[2][7] ), .IN2(n128), .IN3(\mem[0][7] ), .IN4(n127), 
        .Q(n129) );
  AO221X1 U146 ( .IN1(\mem[4][7] ), .IN2(n131), .IN3(\mem[6][7] ), .IN4(n130), 
        .IN5(n129), .Q(n132) );
  AO22X1 U147 ( .IN1(N9), .IN2(n133), .IN3(n132), .IN4(n134), .Q(rd_mem_out[7]) );
  NOR2X0 U148 ( .IN1(n174), .IN2(N13), .QN(n170) );
  NOR2X0 U149 ( .IN1(n174), .IN2(n186), .QN(n169) );
  NOR2X0 U150 ( .IN1(n186), .IN2(N14), .QN(n167) );
  NOR2X0 U151 ( .IN1(N13), .IN2(N14), .QN(n166) );
  AO22X1 U152 ( .IN1(\mem[3][0] ), .IN2(n167), .IN3(\mem[1][0] ), .IN4(n166), 
        .Q(n137) );
  AO221X1 U153 ( .IN1(\mem[5][0] ), .IN2(n170), .IN3(\mem[7][0] ), .IN4(n169), 
        .IN5(n137), .Q(n140) );
  AO22X1 U154 ( .IN1(\mem[2][0] ), .IN2(n167), .IN3(\mem[0][0] ), .IN4(n166), 
        .Q(n138) );
  AO221X1 U155 ( .IN1(\mem[4][0] ), .IN2(n170), .IN3(\mem[6][0] ), .IN4(n169), 
        .IN5(n138), .Q(n139) );
  AO22X1 U156 ( .IN1(n140), .IN2(N12), .IN3(n139), .IN4(n173), .Q(N24) );
  AO22X1 U157 ( .IN1(\mem[3][1] ), .IN2(n167), .IN3(\mem[1][1] ), .IN4(n166), 
        .Q(n141) );
  AO221X1 U158 ( .IN1(\mem[5][1] ), .IN2(n170), .IN3(\mem[7][1] ), .IN4(n169), 
        .IN5(n141), .Q(n144) );
  AO22X1 U159 ( .IN1(\mem[2][1] ), .IN2(n167), .IN3(\mem[0][1] ), .IN4(n166), 
        .Q(n142) );
  AO221X1 U160 ( .IN1(\mem[4][1] ), .IN2(n170), .IN3(\mem[6][1] ), .IN4(n169), 
        .IN5(n142), .Q(n143) );
  AO22X1 U161 ( .IN1(n144), .IN2(N12), .IN3(n143), .IN4(n173), .Q(N23) );
  AO22X1 U162 ( .IN1(\mem[3][2] ), .IN2(n167), .IN3(\mem[1][2] ), .IN4(n166), 
        .Q(n145) );
  AO221X1 U163 ( .IN1(\mem[5][2] ), .IN2(n170), .IN3(\mem[7][2] ), .IN4(n169), 
        .IN5(n145), .Q(n148) );
  AO22X1 U164 ( .IN1(\mem[2][2] ), .IN2(n167), .IN3(\mem[0][2] ), .IN4(n166), 
        .Q(n146) );
  AO221X1 U165 ( .IN1(\mem[4][2] ), .IN2(n170), .IN3(\mem[6][2] ), .IN4(n169), 
        .IN5(n146), .Q(n147) );
  AO22X1 U166 ( .IN1(n148), .IN2(N12), .IN3(n147), .IN4(n173), .Q(N22) );
  AO22X1 U167 ( .IN1(\mem[3][3] ), .IN2(n167), .IN3(\mem[1][3] ), .IN4(n166), 
        .Q(n149) );
  AO221X1 U168 ( .IN1(\mem[5][3] ), .IN2(n170), .IN3(\mem[7][3] ), .IN4(n169), 
        .IN5(n149), .Q(n152) );
  AO22X1 U169 ( .IN1(\mem[2][3] ), .IN2(n167), .IN3(\mem[0][3] ), .IN4(n166), 
        .Q(n150) );
  AO221X1 U170 ( .IN1(\mem[4][3] ), .IN2(n170), .IN3(\mem[6][3] ), .IN4(n169), 
        .IN5(n150), .Q(n151) );
  AO22X1 U171 ( .IN1(n152), .IN2(N12), .IN3(n151), .IN4(n173), .Q(N21) );
  AO22X1 U172 ( .IN1(\mem[3][4] ), .IN2(n167), .IN3(\mem[1][4] ), .IN4(n166), 
        .Q(n153) );
  AO221X1 U173 ( .IN1(\mem[5][4] ), .IN2(n170), .IN3(\mem[7][4] ), .IN4(n169), 
        .IN5(n153), .Q(n156) );
  AO22X1 U174 ( .IN1(\mem[2][4] ), .IN2(n167), .IN3(\mem[0][4] ), .IN4(n166), 
        .Q(n154) );
  AO221X1 U175 ( .IN1(\mem[4][4] ), .IN2(n170), .IN3(\mem[6][4] ), .IN4(n169), 
        .IN5(n154), .Q(n155) );
  AO22X1 U176 ( .IN1(n156), .IN2(N12), .IN3(n155), .IN4(n173), .Q(N20) );
  AO22X1 U177 ( .IN1(\mem[3][5] ), .IN2(n167), .IN3(\mem[1][5] ), .IN4(n166), 
        .Q(n157) );
  AO221X1 U178 ( .IN1(\mem[5][5] ), .IN2(n170), .IN3(\mem[7][5] ), .IN4(n169), 
        .IN5(n157), .Q(n160) );
  AO22X1 U179 ( .IN1(\mem[2][5] ), .IN2(n167), .IN3(\mem[0][5] ), .IN4(n166), 
        .Q(n158) );
  AO221X1 U180 ( .IN1(\mem[4][5] ), .IN2(n170), .IN3(\mem[6][5] ), .IN4(n169), 
        .IN5(n158), .Q(n159) );
  AO22X1 U181 ( .IN1(n160), .IN2(N12), .IN3(n159), .IN4(n173), .Q(N19) );
  AO22X1 U182 ( .IN1(\mem[3][6] ), .IN2(n167), .IN3(\mem[1][6] ), .IN4(n166), 
        .Q(n161) );
  AO221X1 U183 ( .IN1(\mem[5][6] ), .IN2(n170), .IN3(\mem[7][6] ), .IN4(n169), 
        .IN5(n161), .Q(n164) );
  AO22X1 U184 ( .IN1(\mem[2][6] ), .IN2(n167), .IN3(\mem[0][6] ), .IN4(n166), 
        .Q(n162) );
  AO221X1 U185 ( .IN1(\mem[4][6] ), .IN2(n170), .IN3(\mem[6][6] ), .IN4(n169), 
        .IN5(n162), .Q(n163) );
  AO22X1 U186 ( .IN1(n164), .IN2(N12), .IN3(n163), .IN4(n173), .Q(N18) );
  AO22X1 U187 ( .IN1(\mem[3][7] ), .IN2(n167), .IN3(\mem[1][7] ), .IN4(n166), 
        .Q(n165) );
  AO221X1 U188 ( .IN1(\mem[5][7] ), .IN2(n170), .IN3(\mem[7][7] ), .IN4(n169), 
        .IN5(n165), .Q(n172) );
  AO22X1 U189 ( .IN1(\mem[2][7] ), .IN2(n167), .IN3(\mem[0][7] ), .IN4(n166), 
        .Q(n168) );
  AO221X1 U190 ( .IN1(\mem[4][7] ), .IN2(n170), .IN3(\mem[6][7] ), .IN4(n169), 
        .IN5(n168), .Q(n171) );
  AO22X1 U191 ( .IN1(N12), .IN2(n172), .IN3(n171), .IN4(n173), .Q(N17) );
  MUX21X1 U192 ( .IN1(\mem[7][7] ), .IN2(n175), .S(n176), .Q(n97) );
  MUX21X1 U193 ( .IN1(\mem[7][6] ), .IN2(n177), .S(n176), .Q(n96) );
  MUX21X1 U194 ( .IN1(\mem[7][5] ), .IN2(n178), .S(n176), .Q(n95) );
  MUX21X1 U195 ( .IN1(\mem[7][4] ), .IN2(n179), .S(n176), .Q(n94) );
  MUX21X1 U196 ( .IN1(\mem[7][3] ), .IN2(n180), .S(n176), .Q(n93) );
  MUX21X1 U197 ( .IN1(\mem[7][2] ), .IN2(n181), .S(n176), .Q(n92) );
  MUX21X1 U198 ( .IN1(\mem[7][1] ), .IN2(n182), .S(n176), .Q(n91) );
  MUX21X1 U199 ( .IN1(\mem[7][0] ), .IN2(n183), .S(n176), .Q(n90) );
  AND3X1 U200 ( .IN1(N13), .IN2(N12), .IN3(N14), .Q(n176) );
  MUX21X1 U201 ( .IN1(\mem[6][7] ), .IN2(n175), .S(n184), .Q(n89) );
  MUX21X1 U202 ( .IN1(\mem[6][6] ), .IN2(n177), .S(n184), .Q(n88) );
  MUX21X1 U203 ( .IN1(\mem[6][5] ), .IN2(n178), .S(n184), .Q(n87) );
  MUX21X1 U204 ( .IN1(\mem[6][4] ), .IN2(n179), .S(n184), .Q(n86) );
  MUX21X1 U205 ( .IN1(\mem[6][3] ), .IN2(n180), .S(n184), .Q(n85) );
  MUX21X1 U206 ( .IN1(\mem[6][2] ), .IN2(n181), .S(n184), .Q(n84) );
  MUX21X1 U207 ( .IN1(\mem[6][1] ), .IN2(n182), .S(n184), .Q(n83) );
  MUX21X1 U208 ( .IN1(\mem[6][0] ), .IN2(n183), .S(n184), .Q(n82) );
  AND3X1 U209 ( .IN1(N13), .IN2(n173), .IN3(N14), .Q(n184) );
  MUX21X1 U210 ( .IN1(\mem[5][7] ), .IN2(n175), .S(n185), .Q(n81) );
  MUX21X1 U211 ( .IN1(\mem[5][6] ), .IN2(n177), .S(n185), .Q(n80) );
  MUX21X1 U212 ( .IN1(\mem[5][5] ), .IN2(n178), .S(n185), .Q(n79) );
  MUX21X1 U213 ( .IN1(\mem[5][4] ), .IN2(n179), .S(n185), .Q(n78) );
  MUX21X1 U214 ( .IN1(\mem[5][3] ), .IN2(n180), .S(n185), .Q(n77) );
  MUX21X1 U215 ( .IN1(\mem[5][2] ), .IN2(n181), .S(n185), .Q(n76) );
  MUX21X1 U216 ( .IN1(\mem[5][1] ), .IN2(n182), .S(n185), .Q(n75) );
  MUX21X1 U217 ( .IN1(\mem[5][0] ), .IN2(n183), .S(n185), .Q(n74) );
  AND3X1 U218 ( .IN1(N12), .IN2(n186), .IN3(N14), .Q(n185) );
  MUX21X1 U219 ( .IN1(\mem[4][7] ), .IN2(n175), .S(n187), .Q(n73) );
  MUX21X1 U220 ( .IN1(\mem[4][6] ), .IN2(n177), .S(n187), .Q(n72) );
  MUX21X1 U221 ( .IN1(\mem[4][5] ), .IN2(n178), .S(n187), .Q(n71) );
  MUX21X1 U222 ( .IN1(\mem[4][4] ), .IN2(n179), .S(n187), .Q(n70) );
  MUX21X1 U223 ( .IN1(\mem[4][3] ), .IN2(n180), .S(n187), .Q(n69) );
  MUX21X1 U224 ( .IN1(\mem[4][2] ), .IN2(n181), .S(n187), .Q(n68) );
  MUX21X1 U225 ( .IN1(\mem[4][1] ), .IN2(n182), .S(n187), .Q(n67) );
  MUX21X1 U226 ( .IN1(\mem[4][0] ), .IN2(n183), .S(n187), .Q(n66) );
  AND3X1 U227 ( .IN1(n173), .IN2(n186), .IN3(N14), .Q(n187) );
  MUX21X1 U228 ( .IN1(\mem[3][7] ), .IN2(n175), .S(n188), .Q(n65) );
  MUX21X1 U229 ( .IN1(\mem[3][6] ), .IN2(n177), .S(n188), .Q(n64) );
  MUX21X1 U230 ( .IN1(\mem[3][5] ), .IN2(n178), .S(n188), .Q(n63) );
  MUX21X1 U231 ( .IN1(\mem[3][4] ), .IN2(n179), .S(n188), .Q(n62) );
  MUX21X1 U232 ( .IN1(\mem[3][3] ), .IN2(n180), .S(n188), .Q(n61) );
  MUX21X1 U233 ( .IN1(\mem[3][2] ), .IN2(n181), .S(n188), .Q(n60) );
  MUX21X1 U234 ( .IN1(\mem[3][1] ), .IN2(n182), .S(n188), .Q(n59) );
  MUX21X1 U235 ( .IN1(\mem[3][0] ), .IN2(n183), .S(n188), .Q(n58) );
  NOR3X0 U236 ( .IN1(n173), .IN2(N14), .IN3(n186), .QN(n188) );
  MUX21X1 U237 ( .IN1(\mem[2][7] ), .IN2(n175), .S(n189), .Q(n57) );
  MUX21X1 U238 ( .IN1(\mem[2][6] ), .IN2(n177), .S(n189), .Q(n56) );
  MUX21X1 U239 ( .IN1(\mem[2][5] ), .IN2(n178), .S(n189), .Q(n55) );
  MUX21X1 U240 ( .IN1(\mem[2][4] ), .IN2(n179), .S(n189), .Q(n54) );
  MUX21X1 U241 ( .IN1(\mem[2][3] ), .IN2(n180), .S(n189), .Q(n53) );
  MUX21X1 U242 ( .IN1(\mem[2][2] ), .IN2(n181), .S(n189), .Q(n52) );
  MUX21X1 U243 ( .IN1(\mem[2][1] ), .IN2(n182), .S(n189), .Q(n51) );
  MUX21X1 U244 ( .IN1(\mem[2][0] ), .IN2(n183), .S(n189), .Q(n50) );
  NOR3X0 U245 ( .IN1(N12), .IN2(N14), .IN3(n186), .QN(n189) );
  INVX0 U246 ( .IN(N13), .QN(n186) );
  MUX21X1 U247 ( .IN1(\mem[1][7] ), .IN2(n175), .S(n190), .Q(n49) );
  MUX21X1 U248 ( .IN1(\mem[1][6] ), .IN2(n177), .S(n190), .Q(n48) );
  MUX21X1 U249 ( .IN1(\mem[1][5] ), .IN2(n178), .S(n190), .Q(n47) );
  MUX21X1 U250 ( .IN1(\mem[1][4] ), .IN2(n179), .S(n190), .Q(n46) );
  MUX21X1 U251 ( .IN1(\mem[1][3] ), .IN2(n180), .S(n190), .Q(n45) );
  MUX21X1 U252 ( .IN1(\mem[1][2] ), .IN2(n181), .S(n190), .Q(n44) );
  MUX21X1 U253 ( .IN1(\mem[1][1] ), .IN2(n182), .S(n190), .Q(n43) );
  MUX21X1 U254 ( .IN1(\mem[1][0] ), .IN2(n183), .S(n190), .Q(n42) );
  NOR3X0 U255 ( .IN1(N13), .IN2(N14), .IN3(n173), .QN(n190) );
  MUX21X1 U256 ( .IN1(\mem[0][7] ), .IN2(n175), .S(n191), .Q(n41) );
  MUX21X1 U257 ( .IN1(N17), .IN2(data_in[7]), .S(n192), .Q(n175) );
  MUX21X1 U258 ( .IN1(\mem[0][6] ), .IN2(n177), .S(n191), .Q(n40) );
  MUX21X1 U259 ( .IN1(N18), .IN2(data_in[6]), .S(n192), .Q(n177) );
  MUX21X1 U260 ( .IN1(\mem[0][5] ), .IN2(n178), .S(n191), .Q(n39) );
  MUX21X1 U261 ( .IN1(N19), .IN2(data_in[5]), .S(n192), .Q(n178) );
  MUX21X1 U262 ( .IN1(\mem[0][4] ), .IN2(n179), .S(n191), .Q(n38) );
  MUX21X1 U263 ( .IN1(N20), .IN2(data_in[4]), .S(n192), .Q(n179) );
  MUX21X1 U264 ( .IN1(\mem[0][3] ), .IN2(n180), .S(n191), .Q(n37) );
  MUX21X1 U265 ( .IN1(N21), .IN2(data_in[3]), .S(n192), .Q(n180) );
  MUX21X1 U266 ( .IN1(\mem[0][2] ), .IN2(n181), .S(n191), .Q(n36) );
  MUX21X1 U267 ( .IN1(N22), .IN2(data_in[2]), .S(n192), .Q(n181) );
  MUX21X1 U268 ( .IN1(\mem[0][1] ), .IN2(n182), .S(n191), .Q(n35) );
  MUX21X1 U269 ( .IN1(N23), .IN2(data_in[1]), .S(n192), .Q(n182) );
  MUX21X1 U270 ( .IN1(\mem[0][0] ), .IN2(n183), .S(n191), .Q(n34) );
  NOR3X0 U271 ( .IN1(N13), .IN2(N14), .IN3(N12), .QN(n191) );
  MUX21X1 U272 ( .IN1(N24), .IN2(data_in[0]), .S(n192), .Q(n183) );
  NOR2X0 U273 ( .IN1(n193), .IN2(full), .QN(n192) );
  INVX0 U274 ( .IN(wr), .QN(n193) );
endmodule

