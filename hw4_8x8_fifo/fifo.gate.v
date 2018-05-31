/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Sun May 20 01:19:06 2018
/////////////////////////////////////////////////////////////


module memory ( wr_clk, wr_pnt, data_in, wr, rd_pnt, full, rd_mem_out );
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
         \mem[0][0] , N17, N18, N19, N20, N21, N22, N23, N24, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160;
  assign N9 = rd_pnt[0];
  assign N10 = rd_pnt[1];
  assign N11 = rd_pnt[2];
  assign N12 = wr_pnt[0];
  assign N13 = wr_pnt[1];
  assign N14 = wr_pnt[2];

  DFFX1 \mem_reg[1][7]  ( .D(n50), .CLK(wr_clk), .Q(\mem[1][7] ) );
  DFFX1 \mem_reg[1][6]  ( .D(n49), .CLK(wr_clk), .Q(\mem[1][6] ) );
  DFFX1 \mem_reg[1][5]  ( .D(n48), .CLK(wr_clk), .Q(\mem[1][5] ) );
  DFFX1 \mem_reg[1][4]  ( .D(n47), .CLK(wr_clk), .Q(\mem[1][4] ) );
  DFFX1 \mem_reg[1][3]  ( .D(n46), .CLK(wr_clk), .Q(\mem[1][3] ) );
  DFFX1 \mem_reg[1][2]  ( .D(n45), .CLK(wr_clk), .Q(\mem[1][2] ) );
  DFFX1 \mem_reg[1][1]  ( .D(n44), .CLK(wr_clk), .Q(\mem[1][1] ) );
  DFFX1 \mem_reg[1][0]  ( .D(n43), .CLK(wr_clk), .Q(\mem[1][0] ) );
  DFFX1 \mem_reg[0][7]  ( .D(n42), .CLK(wr_clk), .Q(\mem[0][7] ) );
  DFFX1 \mem_reg[0][6]  ( .D(n41), .CLK(wr_clk), .Q(\mem[0][6] ) );
  DFFX1 \mem_reg[0][5]  ( .D(n40), .CLK(wr_clk), .Q(\mem[0][5] ) );
  DFFX1 \mem_reg[0][4]  ( .D(n39), .CLK(wr_clk), .Q(\mem[0][4] ) );
  DFFX1 \mem_reg[0][3]  ( .D(n38), .CLK(wr_clk), .Q(\mem[0][3] ) );
  DFFX1 \mem_reg[0][2]  ( .D(n37), .CLK(wr_clk), .Q(\mem[0][2] ) );
  DFFX1 \mem_reg[0][1]  ( .D(n36), .CLK(wr_clk), .Q(\mem[0][1] ) );
  DFFX1 \mem_reg[0][0]  ( .D(n35), .CLK(wr_clk), .Q(\mem[0][0] ) );
  DFFX1 \mem_reg[3][7]  ( .D(n66), .CLK(wr_clk), .Q(\mem[3][7] ) );
  DFFX1 \mem_reg[3][6]  ( .D(n65), .CLK(wr_clk), .Q(\mem[3][6] ) );
  DFFX1 \mem_reg[3][5]  ( .D(n64), .CLK(wr_clk), .Q(\mem[3][5] ) );
  DFFX1 \mem_reg[3][4]  ( .D(n63), .CLK(wr_clk), .Q(\mem[3][4] ) );
  DFFX1 \mem_reg[3][3]  ( .D(n62), .CLK(wr_clk), .Q(\mem[3][3] ) );
  DFFX1 \mem_reg[3][2]  ( .D(n61), .CLK(wr_clk), .Q(\mem[3][2] ) );
  DFFX1 \mem_reg[3][1]  ( .D(n60), .CLK(wr_clk), .Q(\mem[3][1] ) );
  DFFX1 \mem_reg[3][0]  ( .D(n59), .CLK(wr_clk), .Q(\mem[3][0] ) );
  DFFX1 \mem_reg[2][7]  ( .D(n58), .CLK(wr_clk), .Q(\mem[2][7] ) );
  DFFX1 \mem_reg[2][6]  ( .D(n57), .CLK(wr_clk), .Q(\mem[2][6] ) );
  DFFX1 \mem_reg[2][5]  ( .D(n56), .CLK(wr_clk), .Q(\mem[2][5] ) );
  DFFX1 \mem_reg[2][4]  ( .D(n55), .CLK(wr_clk), .Q(\mem[2][4] ) );
  DFFX1 \mem_reg[2][3]  ( .D(n54), .CLK(wr_clk), .Q(\mem[2][3] ) );
  DFFX1 \mem_reg[2][2]  ( .D(n53), .CLK(wr_clk), .Q(\mem[2][2] ) );
  DFFX1 \mem_reg[2][1]  ( .D(n52), .CLK(wr_clk), .Q(\mem[2][1] ) );
  DFFX1 \mem_reg[2][0]  ( .D(n51), .CLK(wr_clk), .Q(\mem[2][0] ) );
  DFFX1 \mem_reg[7][7]  ( .D(n98), .CLK(wr_clk), .Q(\mem[7][7] ) );
  DFFX1 \mem_reg[7][6]  ( .D(n97), .CLK(wr_clk), .Q(\mem[7][6] ) );
  DFFX1 \mem_reg[7][5]  ( .D(n96), .CLK(wr_clk), .Q(\mem[7][5] ) );
  DFFX1 \mem_reg[7][4]  ( .D(n95), .CLK(wr_clk), .Q(\mem[7][4] ) );
  DFFX1 \mem_reg[7][3]  ( .D(n94), .CLK(wr_clk), .Q(\mem[7][3] ) );
  DFFX1 \mem_reg[7][2]  ( .D(n93), .CLK(wr_clk), .Q(\mem[7][2] ) );
  DFFX1 \mem_reg[7][1]  ( .D(n92), .CLK(wr_clk), .Q(\mem[7][1] ) );
  DFFX1 \mem_reg[7][0]  ( .D(n91), .CLK(wr_clk), .Q(\mem[7][0] ) );
  DFFX1 \mem_reg[6][7]  ( .D(n90), .CLK(wr_clk), .Q(\mem[6][7] ) );
  DFFX1 \mem_reg[6][6]  ( .D(n89), .CLK(wr_clk), .Q(\mem[6][6] ) );
  DFFX1 \mem_reg[6][5]  ( .D(n88), .CLK(wr_clk), .Q(\mem[6][5] ) );
  DFFX1 \mem_reg[6][4]  ( .D(n87), .CLK(wr_clk), .Q(\mem[6][4] ) );
  DFFX1 \mem_reg[6][3]  ( .D(n86), .CLK(wr_clk), .Q(\mem[6][3] ) );
  DFFX1 \mem_reg[6][2]  ( .D(n85), .CLK(wr_clk), .Q(\mem[6][2] ) );
  DFFX1 \mem_reg[6][1]  ( .D(n84), .CLK(wr_clk), .Q(\mem[6][1] ) );
  DFFX1 \mem_reg[6][0]  ( .D(n83), .CLK(wr_clk), .Q(\mem[6][0] ) );
  DFFX1 \mem_reg[5][7]  ( .D(n82), .CLK(wr_clk), .Q(\mem[5][7] ) );
  DFFX1 \mem_reg[5][6]  ( .D(n81), .CLK(wr_clk), .Q(\mem[5][6] ) );
  DFFX1 \mem_reg[5][5]  ( .D(n80), .CLK(wr_clk), .Q(\mem[5][5] ) );
  DFFX1 \mem_reg[5][4]  ( .D(n79), .CLK(wr_clk), .Q(\mem[5][4] ) );
  DFFX1 \mem_reg[5][3]  ( .D(n78), .CLK(wr_clk), .Q(\mem[5][3] ) );
  DFFX1 \mem_reg[5][2]  ( .D(n77), .CLK(wr_clk), .Q(\mem[5][2] ) );
  DFFX1 \mem_reg[5][1]  ( .D(n76), .CLK(wr_clk), .Q(\mem[5][1] ) );
  DFFX1 \mem_reg[5][0]  ( .D(n75), .CLK(wr_clk), .Q(\mem[5][0] ) );
  DFFX1 \mem_reg[4][7]  ( .D(n74), .CLK(wr_clk), .Q(\mem[4][7] ) );
  DFFX1 \mem_reg[4][6]  ( .D(n73), .CLK(wr_clk), .Q(\mem[4][6] ) );
  DFFX1 \mem_reg[4][5]  ( .D(n72), .CLK(wr_clk), .Q(\mem[4][5] ) );
  DFFX1 \mem_reg[4][4]  ( .D(n71), .CLK(wr_clk), .Q(\mem[4][4] ) );
  DFFX1 \mem_reg[4][3]  ( .D(n70), .CLK(wr_clk), .Q(\mem[4][3] ) );
  DFFX1 \mem_reg[4][2]  ( .D(n69), .CLK(wr_clk), .Q(\mem[4][2] ) );
  DFFX1 \mem_reg[4][1]  ( .D(n68), .CLK(wr_clk), .Q(\mem[4][1] ) );
  DFFX1 \mem_reg[4][0]  ( .D(n67), .CLK(wr_clk), .Q(\mem[4][0] ) );
  INVX0 U2 ( .IN(N12), .QN(n141) );
  INVX0 U3 ( .IN(N9), .QN(n103) );
  INVX0 U4 ( .IN(N14), .QN(n140) );
  INVX0 U5 ( .IN(N10), .QN(n102) );
  INVX0 U6 ( .IN(N11), .QN(n101) );
  NOR2X0 U7 ( .IN1(n101), .IN2(N10), .QN(n34) );
  NOR2X0 U8 ( .IN1(n101), .IN2(n102), .QN(n33) );
  NOR2X0 U9 ( .IN1(n102), .IN2(N11), .QN(n31) );
  NOR2X0 U10 ( .IN1(N10), .IN2(N11), .QN(n30) );
  AO22X1 U11 ( .IN1(\mem[3][0] ), .IN2(n31), .IN3(\mem[1][0] ), .IN4(n30), .Q(
        n1) );
  AO221X1 U12 ( .IN1(\mem[5][0] ), .IN2(n34), .IN3(\mem[7][0] ), .IN4(n33), 
        .IN5(n1), .Q(n4) );
  AO22X1 U13 ( .IN1(\mem[2][0] ), .IN2(n31), .IN3(\mem[0][0] ), .IN4(n30), .Q(
        n2) );
  AO221X1 U14 ( .IN1(\mem[4][0] ), .IN2(n34), .IN3(\mem[6][0] ), .IN4(n33), 
        .IN5(n2), .Q(n3) );
  AO22X1 U15 ( .IN1(n4), .IN2(N9), .IN3(n3), .IN4(n103), .Q(rd_mem_out[0]) );
  AO22X1 U16 ( .IN1(\mem[3][1] ), .IN2(n31), .IN3(\mem[1][1] ), .IN4(n30), .Q(
        n5) );
  AO221X1 U17 ( .IN1(\mem[5][1] ), .IN2(n34), .IN3(\mem[7][1] ), .IN4(n33), 
        .IN5(n5), .Q(n8) );
  AO22X1 U18 ( .IN1(\mem[2][1] ), .IN2(n31), .IN3(\mem[0][1] ), .IN4(n30), .Q(
        n6) );
  AO221X1 U19 ( .IN1(\mem[4][1] ), .IN2(n34), .IN3(\mem[6][1] ), .IN4(n33), 
        .IN5(n6), .Q(n7) );
  AO22X1 U20 ( .IN1(n8), .IN2(N9), .IN3(n7), .IN4(n103), .Q(rd_mem_out[1]) );
  AO22X1 U21 ( .IN1(\mem[3][2] ), .IN2(n31), .IN3(\mem[1][2] ), .IN4(n30), .Q(
        n9) );
  AO221X1 U22 ( .IN1(\mem[5][2] ), .IN2(n34), .IN3(\mem[7][2] ), .IN4(n33), 
        .IN5(n9), .Q(n12) );
  AO22X1 U23 ( .IN1(\mem[2][2] ), .IN2(n31), .IN3(\mem[0][2] ), .IN4(n30), .Q(
        n10) );
  AO221X1 U24 ( .IN1(\mem[4][2] ), .IN2(n34), .IN3(\mem[6][2] ), .IN4(n33), 
        .IN5(n10), .Q(n11) );
  AO22X1 U25 ( .IN1(n12), .IN2(N9), .IN3(n11), .IN4(n103), .Q(rd_mem_out[2])
         );
  AO22X1 U26 ( .IN1(\mem[3][3] ), .IN2(n31), .IN3(\mem[1][3] ), .IN4(n30), .Q(
        n13) );
  AO221X1 U27 ( .IN1(\mem[5][3] ), .IN2(n34), .IN3(\mem[7][3] ), .IN4(n33), 
        .IN5(n13), .Q(n16) );
  AO22X1 U28 ( .IN1(\mem[2][3] ), .IN2(n31), .IN3(\mem[0][3] ), .IN4(n30), .Q(
        n14) );
  AO221X1 U29 ( .IN1(\mem[4][3] ), .IN2(n34), .IN3(\mem[6][3] ), .IN4(n33), 
        .IN5(n14), .Q(n15) );
  AO22X1 U30 ( .IN1(n16), .IN2(N9), .IN3(n15), .IN4(n103), .Q(rd_mem_out[3])
         );
  AO22X1 U31 ( .IN1(\mem[3][4] ), .IN2(n31), .IN3(\mem[1][4] ), .IN4(n30), .Q(
        n17) );
  AO221X1 U32 ( .IN1(\mem[5][4] ), .IN2(n34), .IN3(\mem[7][4] ), .IN4(n33), 
        .IN5(n17), .Q(n20) );
  AO22X1 U33 ( .IN1(\mem[2][4] ), .IN2(n31), .IN3(\mem[0][4] ), .IN4(n30), .Q(
        n18) );
  AO221X1 U34 ( .IN1(\mem[4][4] ), .IN2(n34), .IN3(\mem[6][4] ), .IN4(n33), 
        .IN5(n18), .Q(n19) );
  AO22X1 U35 ( .IN1(n20), .IN2(N9), .IN3(n19), .IN4(n103), .Q(rd_mem_out[4])
         );
  AO22X1 U36 ( .IN1(\mem[3][5] ), .IN2(n31), .IN3(\mem[1][5] ), .IN4(n30), .Q(
        n21) );
  AO221X1 U37 ( .IN1(\mem[5][5] ), .IN2(n34), .IN3(\mem[7][5] ), .IN4(n33), 
        .IN5(n21), .Q(n24) );
  AO22X1 U38 ( .IN1(\mem[2][5] ), .IN2(n31), .IN3(\mem[0][5] ), .IN4(n30), .Q(
        n22) );
  AO221X1 U39 ( .IN1(\mem[4][5] ), .IN2(n34), .IN3(\mem[6][5] ), .IN4(n33), 
        .IN5(n22), .Q(n23) );
  AO22X1 U40 ( .IN1(n24), .IN2(N9), .IN3(n23), .IN4(n103), .Q(rd_mem_out[5])
         );
  AO22X1 U41 ( .IN1(\mem[3][6] ), .IN2(n31), .IN3(\mem[1][6] ), .IN4(n30), .Q(
        n25) );
  AO221X1 U42 ( .IN1(\mem[5][6] ), .IN2(n34), .IN3(\mem[7][6] ), .IN4(n33), 
        .IN5(n25), .Q(n28) );
  AO22X1 U43 ( .IN1(\mem[2][6] ), .IN2(n31), .IN3(\mem[0][6] ), .IN4(n30), .Q(
        n26) );
  AO221X1 U44 ( .IN1(\mem[4][6] ), .IN2(n34), .IN3(\mem[6][6] ), .IN4(n33), 
        .IN5(n26), .Q(n27) );
  AO22X1 U45 ( .IN1(n28), .IN2(N9), .IN3(n27), .IN4(n103), .Q(rd_mem_out[6])
         );
  AO22X1 U46 ( .IN1(\mem[3][7] ), .IN2(n31), .IN3(\mem[1][7] ), .IN4(n30), .Q(
        n29) );
  AO221X1 U47 ( .IN1(\mem[5][7] ), .IN2(n34), .IN3(\mem[7][7] ), .IN4(n33), 
        .IN5(n29), .Q(n100) );
  AO22X1 U48 ( .IN1(\mem[2][7] ), .IN2(n31), .IN3(\mem[0][7] ), .IN4(n30), .Q(
        n32) );
  AO221X1 U49 ( .IN1(\mem[4][7] ), .IN2(n34), .IN3(\mem[6][7] ), .IN4(n33), 
        .IN5(n32), .Q(n99) );
  AO22X1 U50 ( .IN1(N9), .IN2(n100), .IN3(n99), .IN4(n103), .Q(rd_mem_out[7])
         );
  NOR2X0 U51 ( .IN1(n140), .IN2(N13), .QN(n137) );
  NOR2X0 U52 ( .IN1(n140), .IN2(n153), .QN(n136) );
  NOR2X0 U53 ( .IN1(n153), .IN2(N14), .QN(n134) );
  NOR2X0 U54 ( .IN1(N13), .IN2(N14), .QN(n133) );
  AO22X1 U55 ( .IN1(\mem[3][0] ), .IN2(n134), .IN3(\mem[1][0] ), .IN4(n133), 
        .Q(n104) );
  AO221X1 U56 ( .IN1(\mem[5][0] ), .IN2(n137), .IN3(\mem[7][0] ), .IN4(n136), 
        .IN5(n104), .Q(n107) );
  AO22X1 U57 ( .IN1(\mem[2][0] ), .IN2(n134), .IN3(\mem[0][0] ), .IN4(n133), 
        .Q(n105) );
  AO221X1 U58 ( .IN1(\mem[4][0] ), .IN2(n137), .IN3(\mem[6][0] ), .IN4(n136), 
        .IN5(n105), .Q(n106) );
  AO22X1 U59 ( .IN1(n107), .IN2(N12), .IN3(n106), .IN4(n141), .Q(N24) );
  AO22X1 U60 ( .IN1(\mem[3][1] ), .IN2(n134), .IN3(\mem[1][1] ), .IN4(n133), 
        .Q(n108) );
  AO221X1 U61 ( .IN1(\mem[5][1] ), .IN2(n137), .IN3(\mem[7][1] ), .IN4(n136), 
        .IN5(n108), .Q(n111) );
  AO22X1 U62 ( .IN1(\mem[2][1] ), .IN2(n134), .IN3(\mem[0][1] ), .IN4(n133), 
        .Q(n109) );
  AO221X1 U63 ( .IN1(\mem[4][1] ), .IN2(n137), .IN3(\mem[6][1] ), .IN4(n136), 
        .IN5(n109), .Q(n110) );
  AO22X1 U64 ( .IN1(n111), .IN2(N12), .IN3(n110), .IN4(n141), .Q(N23) );
  AO22X1 U65 ( .IN1(\mem[3][2] ), .IN2(n134), .IN3(\mem[1][2] ), .IN4(n133), 
        .Q(n112) );
  AO221X1 U66 ( .IN1(\mem[5][2] ), .IN2(n137), .IN3(\mem[7][2] ), .IN4(n136), 
        .IN5(n112), .Q(n115) );
  AO22X1 U67 ( .IN1(\mem[2][2] ), .IN2(n134), .IN3(\mem[0][2] ), .IN4(n133), 
        .Q(n113) );
  AO221X1 U68 ( .IN1(\mem[4][2] ), .IN2(n137), .IN3(\mem[6][2] ), .IN4(n136), 
        .IN5(n113), .Q(n114) );
  AO22X1 U69 ( .IN1(n115), .IN2(N12), .IN3(n114), .IN4(n141), .Q(N22) );
  AO22X1 U70 ( .IN1(\mem[3][3] ), .IN2(n134), .IN3(\mem[1][3] ), .IN4(n133), 
        .Q(n116) );
  AO221X1 U71 ( .IN1(\mem[5][3] ), .IN2(n137), .IN3(\mem[7][3] ), .IN4(n136), 
        .IN5(n116), .Q(n119) );
  AO22X1 U72 ( .IN1(\mem[2][3] ), .IN2(n134), .IN3(\mem[0][3] ), .IN4(n133), 
        .Q(n117) );
  AO221X1 U73 ( .IN1(\mem[4][3] ), .IN2(n137), .IN3(\mem[6][3] ), .IN4(n136), 
        .IN5(n117), .Q(n118) );
  AO22X1 U74 ( .IN1(n119), .IN2(N12), .IN3(n118), .IN4(n141), .Q(N21) );
  AO22X1 U75 ( .IN1(\mem[3][4] ), .IN2(n134), .IN3(\mem[1][4] ), .IN4(n133), 
        .Q(n120) );
  AO221X1 U76 ( .IN1(\mem[5][4] ), .IN2(n137), .IN3(\mem[7][4] ), .IN4(n136), 
        .IN5(n120), .Q(n123) );
  AO22X1 U77 ( .IN1(\mem[2][4] ), .IN2(n134), .IN3(\mem[0][4] ), .IN4(n133), 
        .Q(n121) );
  AO221X1 U78 ( .IN1(\mem[4][4] ), .IN2(n137), .IN3(\mem[6][4] ), .IN4(n136), 
        .IN5(n121), .Q(n122) );
  AO22X1 U79 ( .IN1(n123), .IN2(N12), .IN3(n122), .IN4(n141), .Q(N20) );
  AO22X1 U80 ( .IN1(\mem[3][5] ), .IN2(n134), .IN3(\mem[1][5] ), .IN4(n133), 
        .Q(n124) );
  AO221X1 U81 ( .IN1(\mem[5][5] ), .IN2(n137), .IN3(\mem[7][5] ), .IN4(n136), 
        .IN5(n124), .Q(n127) );
  AO22X1 U82 ( .IN1(\mem[2][5] ), .IN2(n134), .IN3(\mem[0][5] ), .IN4(n133), 
        .Q(n125) );
  AO221X1 U83 ( .IN1(\mem[4][5] ), .IN2(n137), .IN3(\mem[6][5] ), .IN4(n136), 
        .IN5(n125), .Q(n126) );
  AO22X1 U84 ( .IN1(n127), .IN2(N12), .IN3(n126), .IN4(n141), .Q(N19) );
  AO22X1 U85 ( .IN1(\mem[3][6] ), .IN2(n134), .IN3(\mem[1][6] ), .IN4(n133), 
        .Q(n128) );
  AO221X1 U86 ( .IN1(\mem[5][6] ), .IN2(n137), .IN3(\mem[7][6] ), .IN4(n136), 
        .IN5(n128), .Q(n131) );
  AO22X1 U87 ( .IN1(\mem[2][6] ), .IN2(n134), .IN3(\mem[0][6] ), .IN4(n133), 
        .Q(n129) );
  AO221X1 U88 ( .IN1(\mem[4][6] ), .IN2(n137), .IN3(\mem[6][6] ), .IN4(n136), 
        .IN5(n129), .Q(n130) );
  AO22X1 U89 ( .IN1(n131), .IN2(N12), .IN3(n130), .IN4(n141), .Q(N18) );
  AO22X1 U90 ( .IN1(\mem[3][7] ), .IN2(n134), .IN3(\mem[1][7] ), .IN4(n133), 
        .Q(n132) );
  AO221X1 U91 ( .IN1(\mem[5][7] ), .IN2(n137), .IN3(\mem[7][7] ), .IN4(n136), 
        .IN5(n132), .Q(n139) );
  AO22X1 U92 ( .IN1(\mem[2][7] ), .IN2(n134), .IN3(\mem[0][7] ), .IN4(n133), 
        .Q(n135) );
  AO221X1 U93 ( .IN1(\mem[4][7] ), .IN2(n137), .IN3(\mem[6][7] ), .IN4(n136), 
        .IN5(n135), .Q(n138) );
  AO22X1 U94 ( .IN1(N12), .IN2(n139), .IN3(n138), .IN4(n141), .Q(N17) );
  MUX21X1 U95 ( .IN1(\mem[7][7] ), .IN2(n142), .S(n143), .Q(n98) );
  MUX21X1 U96 ( .IN1(\mem[7][6] ), .IN2(n144), .S(n143), .Q(n97) );
  MUX21X1 U97 ( .IN1(\mem[7][5] ), .IN2(n145), .S(n143), .Q(n96) );
  MUX21X1 U98 ( .IN1(\mem[7][4] ), .IN2(n146), .S(n143), .Q(n95) );
  MUX21X1 U99 ( .IN1(\mem[7][3] ), .IN2(n147), .S(n143), .Q(n94) );
  MUX21X1 U100 ( .IN1(\mem[7][2] ), .IN2(n148), .S(n143), .Q(n93) );
  MUX21X1 U101 ( .IN1(\mem[7][1] ), .IN2(n149), .S(n143), .Q(n92) );
  MUX21X1 U102 ( .IN1(\mem[7][0] ), .IN2(n150), .S(n143), .Q(n91) );
  AND3X1 U103 ( .IN1(N13), .IN2(N12), .IN3(N14), .Q(n143) );
  MUX21X1 U104 ( .IN1(\mem[6][7] ), .IN2(n142), .S(n151), .Q(n90) );
  MUX21X1 U105 ( .IN1(\mem[6][6] ), .IN2(n144), .S(n151), .Q(n89) );
  MUX21X1 U106 ( .IN1(\mem[6][5] ), .IN2(n145), .S(n151), .Q(n88) );
  MUX21X1 U107 ( .IN1(\mem[6][4] ), .IN2(n146), .S(n151), .Q(n87) );
  MUX21X1 U108 ( .IN1(\mem[6][3] ), .IN2(n147), .S(n151), .Q(n86) );
  MUX21X1 U109 ( .IN1(\mem[6][2] ), .IN2(n148), .S(n151), .Q(n85) );
  MUX21X1 U110 ( .IN1(\mem[6][1] ), .IN2(n149), .S(n151), .Q(n84) );
  MUX21X1 U111 ( .IN1(\mem[6][0] ), .IN2(n150), .S(n151), .Q(n83) );
  AND3X1 U112 ( .IN1(N13), .IN2(n141), .IN3(N14), .Q(n151) );
  MUX21X1 U113 ( .IN1(\mem[5][7] ), .IN2(n142), .S(n152), .Q(n82) );
  MUX21X1 U114 ( .IN1(\mem[5][6] ), .IN2(n144), .S(n152), .Q(n81) );
  MUX21X1 U115 ( .IN1(\mem[5][5] ), .IN2(n145), .S(n152), .Q(n80) );
  MUX21X1 U116 ( .IN1(\mem[5][4] ), .IN2(n146), .S(n152), .Q(n79) );
  MUX21X1 U117 ( .IN1(\mem[5][3] ), .IN2(n147), .S(n152), .Q(n78) );
  MUX21X1 U118 ( .IN1(\mem[5][2] ), .IN2(n148), .S(n152), .Q(n77) );
  MUX21X1 U119 ( .IN1(\mem[5][1] ), .IN2(n149), .S(n152), .Q(n76) );
  MUX21X1 U120 ( .IN1(\mem[5][0] ), .IN2(n150), .S(n152), .Q(n75) );
  AND3X1 U121 ( .IN1(N12), .IN2(n153), .IN3(N14), .Q(n152) );
  MUX21X1 U122 ( .IN1(\mem[4][7] ), .IN2(n142), .S(n154), .Q(n74) );
  MUX21X1 U123 ( .IN1(\mem[4][6] ), .IN2(n144), .S(n154), .Q(n73) );
  MUX21X1 U124 ( .IN1(\mem[4][5] ), .IN2(n145), .S(n154), .Q(n72) );
  MUX21X1 U125 ( .IN1(\mem[4][4] ), .IN2(n146), .S(n154), .Q(n71) );
  MUX21X1 U126 ( .IN1(\mem[4][3] ), .IN2(n147), .S(n154), .Q(n70) );
  MUX21X1 U127 ( .IN1(\mem[4][2] ), .IN2(n148), .S(n154), .Q(n69) );
  MUX21X1 U128 ( .IN1(\mem[4][1] ), .IN2(n149), .S(n154), .Q(n68) );
  MUX21X1 U129 ( .IN1(\mem[4][0] ), .IN2(n150), .S(n154), .Q(n67) );
  AND3X1 U130 ( .IN1(n141), .IN2(n153), .IN3(N14), .Q(n154) );
  MUX21X1 U131 ( .IN1(\mem[3][7] ), .IN2(n142), .S(n155), .Q(n66) );
  MUX21X1 U132 ( .IN1(\mem[3][6] ), .IN2(n144), .S(n155), .Q(n65) );
  MUX21X1 U133 ( .IN1(\mem[3][5] ), .IN2(n145), .S(n155), .Q(n64) );
  MUX21X1 U134 ( .IN1(\mem[3][4] ), .IN2(n146), .S(n155), .Q(n63) );
  MUX21X1 U135 ( .IN1(\mem[3][3] ), .IN2(n147), .S(n155), .Q(n62) );
  MUX21X1 U136 ( .IN1(\mem[3][2] ), .IN2(n148), .S(n155), .Q(n61) );
  MUX21X1 U137 ( .IN1(\mem[3][1] ), .IN2(n149), .S(n155), .Q(n60) );
  MUX21X1 U138 ( .IN1(\mem[3][0] ), .IN2(n150), .S(n155), .Q(n59) );
  NOR3X0 U139 ( .IN1(n141), .IN2(N14), .IN3(n153), .QN(n155) );
  MUX21X1 U140 ( .IN1(\mem[2][7] ), .IN2(n142), .S(n156), .Q(n58) );
  MUX21X1 U141 ( .IN1(\mem[2][6] ), .IN2(n144), .S(n156), .Q(n57) );
  MUX21X1 U142 ( .IN1(\mem[2][5] ), .IN2(n145), .S(n156), .Q(n56) );
  MUX21X1 U143 ( .IN1(\mem[2][4] ), .IN2(n146), .S(n156), .Q(n55) );
  MUX21X1 U144 ( .IN1(\mem[2][3] ), .IN2(n147), .S(n156), .Q(n54) );
  MUX21X1 U145 ( .IN1(\mem[2][2] ), .IN2(n148), .S(n156), .Q(n53) );
  MUX21X1 U146 ( .IN1(\mem[2][1] ), .IN2(n149), .S(n156), .Q(n52) );
  MUX21X1 U147 ( .IN1(\mem[2][0] ), .IN2(n150), .S(n156), .Q(n51) );
  NOR3X0 U148 ( .IN1(N12), .IN2(N14), .IN3(n153), .QN(n156) );
  INVX0 U149 ( .IN(N13), .QN(n153) );
  MUX21X1 U150 ( .IN1(\mem[1][7] ), .IN2(n142), .S(n157), .Q(n50) );
  MUX21X1 U151 ( .IN1(\mem[1][6] ), .IN2(n144), .S(n157), .Q(n49) );
  MUX21X1 U152 ( .IN1(\mem[1][5] ), .IN2(n145), .S(n157), .Q(n48) );
  MUX21X1 U153 ( .IN1(\mem[1][4] ), .IN2(n146), .S(n157), .Q(n47) );
  MUX21X1 U154 ( .IN1(\mem[1][3] ), .IN2(n147), .S(n157), .Q(n46) );
  MUX21X1 U155 ( .IN1(\mem[1][2] ), .IN2(n148), .S(n157), .Q(n45) );
  MUX21X1 U156 ( .IN1(\mem[1][1] ), .IN2(n149), .S(n157), .Q(n44) );
  MUX21X1 U157 ( .IN1(\mem[1][0] ), .IN2(n150), .S(n157), .Q(n43) );
  NOR3X0 U158 ( .IN1(N13), .IN2(N14), .IN3(n141), .QN(n157) );
  MUX21X1 U159 ( .IN1(\mem[0][7] ), .IN2(n142), .S(n158), .Q(n42) );
  MUX21X1 U160 ( .IN1(N17), .IN2(data_in[7]), .S(n159), .Q(n142) );
  MUX21X1 U161 ( .IN1(\mem[0][6] ), .IN2(n144), .S(n158), .Q(n41) );
  MUX21X1 U162 ( .IN1(N18), .IN2(data_in[6]), .S(n159), .Q(n144) );
  MUX21X1 U163 ( .IN1(\mem[0][5] ), .IN2(n145), .S(n158), .Q(n40) );
  MUX21X1 U164 ( .IN1(N19), .IN2(data_in[5]), .S(n159), .Q(n145) );
  MUX21X1 U165 ( .IN1(\mem[0][4] ), .IN2(n146), .S(n158), .Q(n39) );
  MUX21X1 U166 ( .IN1(N20), .IN2(data_in[4]), .S(n159), .Q(n146) );
  MUX21X1 U167 ( .IN1(\mem[0][3] ), .IN2(n147), .S(n158), .Q(n38) );
  MUX21X1 U168 ( .IN1(N21), .IN2(data_in[3]), .S(n159), .Q(n147) );
  MUX21X1 U169 ( .IN1(\mem[0][2] ), .IN2(n148), .S(n158), .Q(n37) );
  MUX21X1 U170 ( .IN1(N22), .IN2(data_in[2]), .S(n159), .Q(n148) );
  MUX21X1 U171 ( .IN1(\mem[0][1] ), .IN2(n149), .S(n158), .Q(n36) );
  MUX21X1 U172 ( .IN1(N23), .IN2(data_in[1]), .S(n159), .Q(n149) );
  MUX21X1 U173 ( .IN1(\mem[0][0] ), .IN2(n150), .S(n158), .Q(n35) );
  NOR3X0 U174 ( .IN1(N13), .IN2(N14), .IN3(N12), .QN(n158) );
  MUX21X1 U175 ( .IN1(N24), .IN2(data_in[0]), .S(n159), .Q(n150) );
  NOR2X0 U176 ( .IN1(n160), .IN2(full), .QN(n159) );
  INVX0 U177 ( .IN(wr), .QN(n160) );
endmodule


module empty_full ( wr_pnt, rd_pnt, rd_toggle, wr_toggle, empty, full );
  input [2:0] wr_pnt;
  input [2:0] rd_pnt;
  input rd_toggle, wr_toggle;
  output empty, full;
  wire   n1, n2, n3, n4, n5, n6;

  NOR2X0 U1 ( .IN1(n1), .IN2(n2), .QN(full) );
  XNOR2X1 U2 ( .IN1(rd_toggle), .IN2(wr_toggle), .Q(n1) );
  NOR2X0 U3 ( .IN1(n2), .IN2(n3), .QN(empty) );
  XOR2X1 U4 ( .IN1(wr_toggle), .IN2(rd_toggle), .Q(n3) );
  NAND3X0 U5 ( .IN1(n4), .IN2(n5), .IN3(n6), .QN(n2) );
  XNOR2X1 U6 ( .IN1(wr_pnt[1]), .IN2(rd_pnt[1]), .Q(n6) );
  XNOR2X1 U7 ( .IN1(wr_pnt[2]), .IN2(rd_pnt[2]), .Q(n5) );
  XNOR2X1 U8 ( .IN1(wr_pnt[0]), .IN2(rd_pnt[0]), .Q(n4) );
endmodule


module read_pointer ( rd_clk, reset_n, rd, empty, rd_pnt, rd_toggle );
  output [2:0] rd_pnt;
  input rd_clk, reset_n, rd, empty;
  output rd_toggle;
  wire   n7, n8, n9, n10, n11, n1, n2, n3, n4, n5, n6;

  DFFARX1 rd_toggle_reg ( .D(n8), .CLK(rd_clk), .RSTB(reset_n), .Q(rd_toggle), 
        .QN(n7) );
  DFFARX1 \rd_pnt_reg[1]  ( .D(n10), .CLK(rd_clk), .RSTB(reset_n), .Q(
        rd_pnt[1]), .QN(n1) );
  DFFARX1 \rd_pnt_reg[2]  ( .D(n9), .CLK(rd_clk), .RSTB(reset_n), .Q(rd_pnt[2]) );
  DFFARX1 \rd_pnt_reg[0]  ( .D(n11), .CLK(rd_clk), .RSTB(reset_n), .Q(
        rd_pnt[0]) );
  XOR2X1 U3 ( .IN1(rd_pnt[2]), .IN2(n2), .Q(n9) );
  XOR2X1 U4 ( .IN1(n7), .IN2(n3), .Q(n8) );
  NAND2X0 U5 ( .IN1(n2), .IN2(rd_pnt[2]), .QN(n3) );
  NOR2X0 U6 ( .IN1(n1), .IN2(n4), .QN(n2) );
  XOR2X1 U7 ( .IN1(rd_pnt[0]), .IN2(n5), .Q(n11) );
  XNOR2X1 U8 ( .IN1(rd_pnt[1]), .IN2(n4), .Q(n10) );
  NAND2X0 U9 ( .IN1(rd_pnt[0]), .IN2(n5), .QN(n4) );
  NOR2X0 U10 ( .IN1(n6), .IN2(empty), .QN(n5) );
  INVX0 U11 ( .IN(rd), .QN(n6) );
endmodule


module write_pointer ( wr_clk, reset_n, wr, full, wr_pnt, wr_toggle );
  output [2:0] wr_pnt;
  input wr_clk, reset_n, wr, full;
  output wr_toggle;
  wire   n7, n8, n9, n10, n11, n1, n2, n3, n4, n5, n6;

  DFFARX1 wr_toggle_reg ( .D(n8), .CLK(wr_clk), .RSTB(reset_n), .Q(wr_toggle), 
        .QN(n7) );
  DFFARX1 \wr_pnt_reg[1]  ( .D(n10), .CLK(wr_clk), .RSTB(reset_n), .Q(
        wr_pnt[1]), .QN(n1) );
  DFFARX1 \wr_pnt_reg[2]  ( .D(n9), .CLK(wr_clk), .RSTB(reset_n), .Q(wr_pnt[2]) );
  DFFARX1 \wr_pnt_reg[0]  ( .D(n11), .CLK(wr_clk), .RSTB(reset_n), .Q(
        wr_pnt[0]) );
  XOR2X1 U3 ( .IN1(wr_pnt[2]), .IN2(n2), .Q(n9) );
  XOR2X1 U4 ( .IN1(n7), .IN2(n3), .Q(n8) );
  NAND2X0 U5 ( .IN1(n2), .IN2(wr_pnt[2]), .QN(n3) );
  NOR2X0 U6 ( .IN1(n1), .IN2(n4), .QN(n2) );
  XOR2X1 U7 ( .IN1(wr_pnt[0]), .IN2(n5), .Q(n11) );
  XNOR2X1 U8 ( .IN1(wr_pnt[1]), .IN2(n4), .Q(n10) );
  NAND2X0 U9 ( .IN1(wr_pnt[0]), .IN2(n5), .QN(n4) );
  NOR2X0 U10 ( .IN1(n6), .IN2(full), .QN(n5) );
  INVX0 U11 ( .IN(wr), .QN(n6) );
endmodule


module fifo ( wr_clk, rd_clk, reset_n, wr, rd, data_in, data_out, empty, full
 );
  input [7:0] data_in;
  output [7:0] data_out;
  input wr_clk, rd_clk, reset_n, wr, rd;
  output empty, full;
  wire   wr_toggle, rd_toggle;
  wire   [7:0] rd_mem_out;
  wire   [2:0] rd_pnt;
  wire   [2:0] wr_pnt;

  memory memory_0 ( .wr_clk(wr_clk), .wr_pnt(wr_pnt), .data_in(data_in), .wr(
        wr), .rd_pnt(rd_pnt), .full(full), .rd_mem_out(rd_mem_out) );
  empty_full empty_full_0 ( .wr_pnt(wr_pnt), .rd_pnt(rd_pnt), .rd_toggle(
        rd_toggle), .wr_toggle(wr_toggle), .empty(empty), .full(full) );
  read_pointer read_pointer_0 ( .rd_clk(rd_clk), .reset_n(reset_n), .rd(rd), 
        .empty(empty), .rd_pnt(rd_pnt), .rd_toggle(rd_toggle) );
  write_pointer write_pointer_0 ( .wr_clk(wr_clk), .reset_n(reset_n), .wr(wr), 
        .full(full), .wr_pnt(wr_pnt), .wr_toggle(wr_toggle) );
  DFFARX1 \data_out_reg[7]  ( .D(rd_mem_out[7]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[7]) );
  DFFARX1 \data_out_reg[6]  ( .D(rd_mem_out[6]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[6]) );
  DFFARX1 \data_out_reg[5]  ( .D(rd_mem_out[5]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[5]) );
  DFFARX1 \data_out_reg[4]  ( .D(rd_mem_out[4]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[4]) );
  DFFARX1 \data_out_reg[3]  ( .D(rd_mem_out[3]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[3]) );
  DFFARX1 \data_out_reg[2]  ( .D(rd_mem_out[2]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[2]) );
  DFFARX1 \data_out_reg[1]  ( .D(rd_mem_out[1]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[1]) );
  DFFARX1 \data_out_reg[0]  ( .D(rd_mem_out[0]), .CLK(rd_clk), .RSTB(reset_n), 
        .Q(data_out[0]) );
endmodule

