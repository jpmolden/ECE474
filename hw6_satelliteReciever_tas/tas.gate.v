/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Thu May 31 00:11:12 2018
/////////////////////////////////////////////////////////////


module memory ( wr_clk, wr_pnt, data_in, wr, rd_pnt, full, rd_mem_out );
  input [1:0] wr_pnt;
  input [7:0] data_in;
  input [1:0] rd_pnt;
  output [7:0] rd_mem_out;
  input wr_clk, wr, full;
  wire   N5, N6, N7, N8, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142;
  assign N5 = rd_pnt[0];
  assign N6 = rd_pnt[1];
  assign N7 = wr_pnt[0];
  assign N8 = wr_pnt[1];

  DFFX1 \mem_reg[3][7]  ( .D(n53), .CLK(wr_clk), .Q(n17), .QN(n111) );
  DFFX1 \mem_reg[3][6]  ( .D(n52), .CLK(wr_clk), .Q(n18), .QN(n115) );
  DFFX1 \mem_reg[3][5]  ( .D(n51), .CLK(wr_clk), .Q(n19), .QN(n119) );
  DFFX1 \mem_reg[3][4]  ( .D(n50), .CLK(wr_clk), .Q(n20), .QN(n123) );
  DFFX1 \mem_reg[3][3]  ( .D(n49), .CLK(wr_clk), .Q(n21), .QN(n127) );
  DFFX1 \mem_reg[3][2]  ( .D(n48), .CLK(wr_clk), .Q(n54), .QN(n131) );
  DFFX1 \mem_reg[3][1]  ( .D(n47), .CLK(wr_clk), .Q(n55), .QN(n135) );
  DFFX1 \mem_reg[3][0]  ( .D(n46), .CLK(wr_clk), .Q(n56), .QN(n139) );
  DFFX1 \mem_reg[2][7]  ( .D(n45), .CLK(wr_clk), .Q(n1), .QN(n112) );
  DFFX1 \mem_reg[2][6]  ( .D(n44), .CLK(wr_clk), .Q(n2), .QN(n116) );
  DFFX1 \mem_reg[2][5]  ( .D(n43), .CLK(wr_clk), .Q(n3), .QN(n120) );
  DFFX1 \mem_reg[2][4]  ( .D(n42), .CLK(wr_clk), .Q(n4), .QN(n124) );
  DFFX1 \mem_reg[2][3]  ( .D(n41), .CLK(wr_clk), .Q(n5), .QN(n128) );
  DFFX1 \mem_reg[2][2]  ( .D(n40), .CLK(wr_clk), .Q(n6), .QN(n132) );
  DFFX1 \mem_reg[2][1]  ( .D(n39), .CLK(wr_clk), .Q(n7), .QN(n136) );
  DFFX1 \mem_reg[2][0]  ( .D(n38), .CLK(wr_clk), .Q(n8), .QN(n140) );
  DFFX1 \mem_reg[1][7]  ( .D(n37), .CLK(wr_clk), .Q(n57), .QN(n114) );
  DFFX1 \mem_reg[1][6]  ( .D(n36), .CLK(wr_clk), .Q(n58), .QN(n118) );
  DFFX1 \mem_reg[1][5]  ( .D(n35), .CLK(wr_clk), .Q(n59), .QN(n122) );
  DFFX1 \mem_reg[1][4]  ( .D(n34), .CLK(wr_clk), .Q(n60), .QN(n126) );
  DFFX1 \mem_reg[1][3]  ( .D(n33), .CLK(wr_clk), .Q(n61), .QN(n130) );
  DFFX1 \mem_reg[1][2]  ( .D(n32), .CLK(wr_clk), .Q(n62), .QN(n134) );
  DFFX1 \mem_reg[1][1]  ( .D(n31), .CLK(wr_clk), .Q(n63), .QN(n138) );
  DFFX1 \mem_reg[1][0]  ( .D(n30), .CLK(wr_clk), .Q(n64), .QN(n142) );
  DFFX1 \mem_reg[0][7]  ( .D(n29), .CLK(wr_clk), .Q(n9), .QN(n113) );
  DFFX1 \mem_reg[0][6]  ( .D(n28), .CLK(wr_clk), .Q(n10), .QN(n117) );
  DFFX1 \mem_reg[0][5]  ( .D(n27), .CLK(wr_clk), .Q(n11), .QN(n121) );
  DFFX1 \mem_reg[0][4]  ( .D(n26), .CLK(wr_clk), .Q(n12), .QN(n125) );
  DFFX1 \mem_reg[0][3]  ( .D(n25), .CLK(wr_clk), .Q(n13), .QN(n129) );
  DFFX1 \mem_reg[0][2]  ( .D(n24), .CLK(wr_clk), .Q(n14), .QN(n133) );
  DFFX1 \mem_reg[0][1]  ( .D(n23), .CLK(wr_clk), .Q(n15), .QN(n137) );
  DFFX1 \mem_reg[0][0]  ( .D(n22), .CLK(wr_clk), .Q(n16), .QN(n141) );
  AO221X1 U2 ( .IN1(n65), .IN2(n17), .IN3(n66), .IN4(n1), .IN5(n67), .Q(
        rd_mem_out[7]) );
  AO22X1 U3 ( .IN1(n68), .IN2(n57), .IN3(n69), .IN4(n9), .Q(n67) );
  AO221X1 U4 ( .IN1(n65), .IN2(n18), .IN3(n66), .IN4(n2), .IN5(n70), .Q(
        rd_mem_out[6]) );
  AO22X1 U5 ( .IN1(n68), .IN2(n58), .IN3(n69), .IN4(n10), .Q(n70) );
  AO221X1 U6 ( .IN1(n65), .IN2(n19), .IN3(n66), .IN4(n3), .IN5(n71), .Q(
        rd_mem_out[5]) );
  AO22X1 U7 ( .IN1(n68), .IN2(n59), .IN3(n69), .IN4(n11), .Q(n71) );
  AO221X1 U8 ( .IN1(n65), .IN2(n20), .IN3(n66), .IN4(n4), .IN5(n72), .Q(
        rd_mem_out[4]) );
  AO22X1 U9 ( .IN1(n68), .IN2(n60), .IN3(n69), .IN4(n12), .Q(n72) );
  AO221X1 U10 ( .IN1(n65), .IN2(n21), .IN3(n66), .IN4(n5), .IN5(n73), .Q(
        rd_mem_out[3]) );
  AO22X1 U11 ( .IN1(n68), .IN2(n61), .IN3(n69), .IN4(n13), .Q(n73) );
  AO221X1 U12 ( .IN1(n65), .IN2(n54), .IN3(n66), .IN4(n6), .IN5(n74), .Q(
        rd_mem_out[2]) );
  AO22X1 U13 ( .IN1(n68), .IN2(n62), .IN3(n69), .IN4(n14), .Q(n74) );
  AO221X1 U14 ( .IN1(n65), .IN2(n55), .IN3(n66), .IN4(n7), .IN5(n75), .Q(
        rd_mem_out[1]) );
  AO22X1 U15 ( .IN1(n68), .IN2(n63), .IN3(n69), .IN4(n15), .Q(n75) );
  AO221X1 U16 ( .IN1(n65), .IN2(n56), .IN3(n66), .IN4(n8), .IN5(n76), .Q(
        rd_mem_out[0]) );
  AO22X1 U17 ( .IN1(n68), .IN2(n64), .IN3(n69), .IN4(n16), .Q(n76) );
  NOR2X0 U18 ( .IN1(N5), .IN2(N6), .QN(n69) );
  NOR2X0 U19 ( .IN1(n77), .IN2(N6), .QN(n68) );
  NOR2X0 U20 ( .IN1(n78), .IN2(N5), .QN(n66) );
  NOR2X0 U21 ( .IN1(n78), .IN2(n77), .QN(n65) );
  INVX0 U22 ( .IN(N5), .QN(n77) );
  INVX0 U23 ( .IN(N6), .QN(n78) );
  MUX21X1 U24 ( .IN1(n79), .IN2(n17), .S(n80), .Q(n53) );
  MUX21X1 U25 ( .IN1(n81), .IN2(n18), .S(n80), .Q(n52) );
  MUX21X1 U26 ( .IN1(n82), .IN2(n19), .S(n80), .Q(n51) );
  MUX21X1 U27 ( .IN1(n83), .IN2(n20), .S(n80), .Q(n50) );
  MUX21X1 U28 ( .IN1(n84), .IN2(n21), .S(n80), .Q(n49) );
  MUX21X1 U29 ( .IN1(n85), .IN2(n54), .S(n80), .Q(n48) );
  MUX21X1 U30 ( .IN1(n86), .IN2(n55), .S(n80), .Q(n47) );
  MUX21X1 U31 ( .IN1(n87), .IN2(n56), .S(n80), .Q(n46) );
  MUX21X1 U32 ( .IN1(n79), .IN2(n1), .S(n88), .Q(n45) );
  MUX21X1 U33 ( .IN1(n81), .IN2(n2), .S(n88), .Q(n44) );
  MUX21X1 U34 ( .IN1(n82), .IN2(n3), .S(n88), .Q(n43) );
  MUX21X1 U35 ( .IN1(n83), .IN2(n4), .S(n88), .Q(n42) );
  MUX21X1 U36 ( .IN1(n84), .IN2(n5), .S(n88), .Q(n41) );
  MUX21X1 U37 ( .IN1(n85), .IN2(n6), .S(n88), .Q(n40) );
  MUX21X1 U38 ( .IN1(n86), .IN2(n7), .S(n88), .Q(n39) );
  MUX21X1 U39 ( .IN1(n87), .IN2(n8), .S(n88), .Q(n38) );
  MUX21X1 U40 ( .IN1(n79), .IN2(n57), .S(n89), .Q(n37) );
  MUX21X1 U41 ( .IN1(n81), .IN2(n58), .S(n89), .Q(n36) );
  MUX21X1 U42 ( .IN1(n82), .IN2(n59), .S(n89), .Q(n35) );
  MUX21X1 U43 ( .IN1(n83), .IN2(n60), .S(n89), .Q(n34) );
  MUX21X1 U44 ( .IN1(n84), .IN2(n61), .S(n89), .Q(n33) );
  MUX21X1 U45 ( .IN1(n85), .IN2(n62), .S(n89), .Q(n32) );
  MUX21X1 U46 ( .IN1(n86), .IN2(n63), .S(n89), .Q(n31) );
  MUX21X1 U47 ( .IN1(n87), .IN2(n64), .S(n89), .Q(n30) );
  MUX21X1 U48 ( .IN1(n79), .IN2(n9), .S(n90), .Q(n29) );
  MUX21X1 U49 ( .IN1(n91), .IN2(data_in[7]), .S(n92), .Q(n79) );
  OAI221X1 U50 ( .IN1(n112), .IN2(n88), .IN3(n111), .IN4(n80), .IN5(n93), .QN(
        n91) );
  OA22X1 U51 ( .IN1(n113), .IN2(n90), .IN3(n114), .IN4(n89), .Q(n93) );
  MUX21X1 U52 ( .IN1(n81), .IN2(n10), .S(n90), .Q(n28) );
  MUX21X1 U53 ( .IN1(n94), .IN2(data_in[6]), .S(n92), .Q(n81) );
  OAI221X1 U54 ( .IN1(n116), .IN2(n88), .IN3(n115), .IN4(n80), .IN5(n95), .QN(
        n94) );
  OA22X1 U55 ( .IN1(n117), .IN2(n90), .IN3(n118), .IN4(n89), .Q(n95) );
  MUX21X1 U56 ( .IN1(n82), .IN2(n11), .S(n90), .Q(n27) );
  MUX21X1 U57 ( .IN1(n96), .IN2(data_in[5]), .S(n92), .Q(n82) );
  OAI221X1 U58 ( .IN1(n120), .IN2(n88), .IN3(n119), .IN4(n80), .IN5(n97), .QN(
        n96) );
  OA22X1 U59 ( .IN1(n121), .IN2(n90), .IN3(n122), .IN4(n89), .Q(n97) );
  MUX21X1 U60 ( .IN1(n83), .IN2(n12), .S(n90), .Q(n26) );
  MUX21X1 U61 ( .IN1(n98), .IN2(data_in[4]), .S(n92), .Q(n83) );
  OAI221X1 U62 ( .IN1(n124), .IN2(n88), .IN3(n123), .IN4(n80), .IN5(n99), .QN(
        n98) );
  OA22X1 U63 ( .IN1(n125), .IN2(n90), .IN3(n126), .IN4(n89), .Q(n99) );
  MUX21X1 U64 ( .IN1(n84), .IN2(n13), .S(n90), .Q(n25) );
  MUX21X1 U65 ( .IN1(n100), .IN2(data_in[3]), .S(n92), .Q(n84) );
  OAI221X1 U66 ( .IN1(n128), .IN2(n88), .IN3(n127), .IN4(n80), .IN5(n101), 
        .QN(n100) );
  OA22X1 U67 ( .IN1(n129), .IN2(n90), .IN3(n130), .IN4(n89), .Q(n101) );
  MUX21X1 U68 ( .IN1(n85), .IN2(n14), .S(n90), .Q(n24) );
  MUX21X1 U69 ( .IN1(n102), .IN2(data_in[2]), .S(n92), .Q(n85) );
  OAI221X1 U70 ( .IN1(n132), .IN2(n88), .IN3(n131), .IN4(n80), .IN5(n103), 
        .QN(n102) );
  OA22X1 U71 ( .IN1(n133), .IN2(n90), .IN3(n134), .IN4(n89), .Q(n103) );
  MUX21X1 U72 ( .IN1(n86), .IN2(n15), .S(n90), .Q(n23) );
  MUX21X1 U73 ( .IN1(n104), .IN2(data_in[1]), .S(n92), .Q(n86) );
  OAI221X1 U74 ( .IN1(n136), .IN2(n88), .IN3(n135), .IN4(n80), .IN5(n105), 
        .QN(n104) );
  OA22X1 U75 ( .IN1(n137), .IN2(n90), .IN3(n138), .IN4(n89), .Q(n105) );
  MUX21X1 U76 ( .IN1(n87), .IN2(n16), .S(n90), .Q(n22) );
  MUX21X1 U77 ( .IN1(n106), .IN2(data_in[0]), .S(n92), .Q(n87) );
  NOR2X0 U78 ( .IN1(n107), .IN2(full), .QN(n92) );
  INVX0 U79 ( .IN(wr), .QN(n107) );
  OAI221X1 U80 ( .IN1(n140), .IN2(n88), .IN3(n139), .IN4(n80), .IN5(n108), 
        .QN(n106) );
  OA22X1 U81 ( .IN1(n141), .IN2(n90), .IN3(n142), .IN4(n89), .Q(n108) );
  NAND2X0 U82 ( .IN1(N7), .IN2(n109), .QN(n89) );
  NAND2X0 U83 ( .IN1(n110), .IN2(n109), .QN(n90) );
  INVX0 U84 ( .IN(N8), .QN(n109) );
  NAND2X0 U85 ( .IN1(N8), .IN2(N7), .QN(n80) );
  NAND2X0 U86 ( .IN1(N8), .IN2(n110), .QN(n88) );
  INVX0 U87 ( .IN(N7), .QN(n110) );
endmodule


module empty_full ( wr_pnt, rd_pnt, rd_toggle, wr_toggle, empty, full );
  input [1:0] wr_pnt;
  input [1:0] rd_pnt;
  input rd_toggle, wr_toggle;
  output empty, full;
  wire   n1, n2, n3, n4;

  NOR3X0 U1 ( .IN1(n1), .IN2(n2), .IN3(n3), .QN(full) );
  INVX0 U2 ( .IN(n4), .QN(n2) );
  NOR3X0 U3 ( .IN1(n4), .IN2(n3), .IN3(n1), .QN(empty) );
  XOR2X1 U4 ( .IN1(wr_pnt[1]), .IN2(rd_pnt[1]), .Q(n1) );
  XOR2X1 U5 ( .IN1(wr_pnt[0]), .IN2(rd_pnt[0]), .Q(n3) );
  XOR2X1 U6 ( .IN1(wr_toggle), .IN2(rd_toggle), .Q(n4) );
endmodule


module read_pointer ( rd_clk, reset_n, rd, empty, rd_pnt, rd_toggle );
  output [1:0] rd_pnt;
  input rd_clk, reset_n, rd, empty;
  output rd_toggle;
  wire   n6, n7, n8, n9, n1, n2, n3, n4;

  DFFARX1 rd_toggle_reg ( .D(n7), .CLK(rd_clk), .RSTB(reset_n), .Q(rd_toggle), 
        .QN(n6) );
  DFFARX1 \rd_pnt_reg[0]  ( .D(n9), .CLK(rd_clk), .RSTB(reset_n), .Q(rd_pnt[0]) );
  DFFARX1 \rd_pnt_reg[1]  ( .D(n8), .CLK(rd_clk), .RSTB(reset_n), .Q(rd_pnt[1]) );
  XNOR2X1 U3 ( .IN1(rd_pnt[0]), .IN2(n1), .Q(n9) );
  NAND2X0 U4 ( .IN1(rd), .IN2(n2), .QN(n1) );
  XOR2X1 U5 ( .IN1(rd_pnt[1]), .IN2(n3), .Q(n8) );
  XOR2X1 U6 ( .IN1(n6), .IN2(n4), .Q(n7) );
  NAND2X0 U7 ( .IN1(n3), .IN2(rd_pnt[1]), .QN(n4) );
  AND3X1 U8 ( .IN1(rd), .IN2(n2), .IN3(rd_pnt[0]), .Q(n3) );
  INVX0 U9 ( .IN(empty), .QN(n2) );
endmodule


module write_pointer ( wr_clk, reset_n, wr, full, wr_pnt, wr_toggle );
  output [1:0] wr_pnt;
  input wr_clk, reset_n, wr, full;
  output wr_toggle;
  wire   n6, n7, n8, n9, n1, n2, n3, n4;

  DFFARX1 wr_toggle_reg ( .D(n7), .CLK(wr_clk), .RSTB(reset_n), .Q(wr_toggle), 
        .QN(n6) );
  DFFARX1 \wr_pnt_reg[0]  ( .D(n9), .CLK(wr_clk), .RSTB(reset_n), .Q(wr_pnt[0]) );
  DFFARX1 \wr_pnt_reg[1]  ( .D(n8), .CLK(wr_clk), .RSTB(reset_n), .Q(wr_pnt[1]) );
  XNOR2X1 U3 ( .IN1(wr_pnt[0]), .IN2(n1), .Q(n9) );
  NAND2X0 U4 ( .IN1(wr), .IN2(n2), .QN(n1) );
  XOR2X1 U5 ( .IN1(wr_pnt[1]), .IN2(n3), .Q(n8) );
  XOR2X1 U6 ( .IN1(n6), .IN2(n4), .Q(n7) );
  NAND2X0 U7 ( .IN1(n3), .IN2(wr_pnt[1]), .QN(n4) );
  AND3X1 U8 ( .IN1(wr), .IN2(n2), .IN3(wr_pnt[0]), .Q(n3) );
  INVX0 U9 ( .IN(full), .QN(n2) );
endmodule


module fifo ( wr_clk, rd_clk, reset_n, wr, rd, data_in, data_out, empty, full
 );
  input [7:0] data_in;
  output [7:0] data_out;
  input wr_clk, rd_clk, reset_n, wr, rd;
  output empty, full;
  wire   wr_toggle, rd_toggle;
  wire   [7:0] rd_mem_out;
  wire   [1:0] rd_pnt;
  wire   [1:0] wr_pnt;

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


module packet_sm ( clk_50, reset_n, shift_done, is_header_byte, is_data_byte
 );
  input clk_50, reset_n, shift_done;
  output is_header_byte, is_data_byte;
  wire   n2, n1, n3, n4, n5, n6, n7, n8, n9;
  wire   [1:0] packet_sm_ps;
  wire   [2:0] packet_sm_ns;

  DFFARX1 \packet_sm_ps_reg[2]  ( .D(packet_sm_ns[2]), .CLK(clk_50), .RSTB(
        reset_n), .Q(is_data_byte), .QN(n2) );
  DFFARX1 \packet_sm_ps_reg[1]  ( .D(packet_sm_ns[1]), .CLK(clk_50), .RSTB(
        reset_n), .Q(packet_sm_ps[1]), .QN(n1) );
  DFFARX1 \packet_sm_ps_reg[0]  ( .D(packet_sm_ns[0]), .CLK(clk_50), .RSTB(
        reset_n), .Q(packet_sm_ps[0]) );
  NAND2X0 U3 ( .IN1(n3), .IN2(n4), .QN(packet_sm_ns[2]) );
  MUX21X1 U4 ( .IN1(packet_sm_ps[0]), .IN2(n5), .S(n2), .Q(n4) );
  INVX0 U5 ( .IN(n6), .QN(n3) );
  MUX21X1 U6 ( .IN1(n5), .IN2(packet_sm_ps[0]), .S(n1), .Q(n6) );
  XNOR2X1 U7 ( .IN1(packet_sm_ps[1]), .IN2(n7), .Q(packet_sm_ns[1]) );
  NAND2X0 U8 ( .IN1(packet_sm_ps[0]), .IN2(shift_done), .QN(n7) );
  MUX21X1 U9 ( .IN1(n8), .IN2(n5), .S(packet_sm_ps[0]), .Q(packet_sm_ns[0]) );
  INVX0 U10 ( .IN(shift_done), .QN(n5) );
  AND2X1 U11 ( .IN1(n9), .IN2(shift_done), .Q(n8) );
  NOR2X0 U12 ( .IN1(packet_sm_ps[0]), .IN2(n9), .QN(is_header_byte) );
  NAND2X0 U13 ( .IN1(n2), .IN2(n1), .QN(n9) );
endmodule


module serialdata_to_parallel ( clk_50, data_ena, reset_n, serial_data, data, 
        shift_done );
  output [7:0] data;
  input clk_50, data_ena, reset_n, serial_data;
  output shift_done;
  wire   N9, N10, N11, N12, n25, n26, n27, n28, n29, n30, n31, n32, n1, n2, n3,
         n4, n5, n6, n7;
  wire   [2:0] shift_cnt;

  DFFARX1 \data_reg[7]  ( .D(n32), .CLK(clk_50), .RSTB(reset_n), .Q(data[7])
         );
  DFFARX1 \shift_cnt_reg[1]  ( .D(N10), .CLK(clk_50), .RSTB(reset_n), .Q(
        shift_cnt[1]) );
  DFFARX1 \data_reg[6]  ( .D(n31), .CLK(clk_50), .RSTB(reset_n), .Q(data[6])
         );
  DFFARX1 \data_reg[1]  ( .D(n26), .CLK(clk_50), .RSTB(reset_n), .Q(data[1])
         );
  DFFARX1 \data_reg[4]  ( .D(n29), .CLK(clk_50), .RSTB(reset_n), .Q(data[4])
         );
  DFFARX1 \shift_cnt_reg[2]  ( .D(N11), .CLK(clk_50), .RSTB(reset_n), .Q(
        shift_cnt[2]) );
  DFFARX1 \data_reg[3]  ( .D(n28), .CLK(clk_50), .RSTB(reset_n), .Q(data[3])
         );
  DFFARX1 \data_reg[5]  ( .D(n30), .CLK(clk_50), .RSTB(reset_n), .Q(data[5])
         );
  DFFARX1 \data_reg[0]  ( .D(n25), .CLK(clk_50), .RSTB(reset_n), .Q(data[0])
         );
  DFFARX1 \shift_cnt_reg[0]  ( .D(N9), .CLK(clk_50), .RSTB(reset_n), .Q(
        shift_cnt[0]) );
  DFFARX1 \data_reg[2]  ( .D(n27), .CLK(clk_50), .RSTB(reset_n), .Q(data[2])
         );
  DFFARX1 \shift_cnt_reg[3]  ( .D(N12), .CLK(clk_50), .RSTB(reset_n), .Q(
        shift_done) );
  MUX21X1 U3 ( .IN1(serial_data), .IN2(data[7]), .S(n1), .Q(n32) );
  MUX21X1 U4 ( .IN1(data[7]), .IN2(data[6]), .S(n1), .Q(n31) );
  MUX21X1 U5 ( .IN1(data[6]), .IN2(data[5]), .S(n1), .Q(n30) );
  MUX21X1 U6 ( .IN1(data[5]), .IN2(data[4]), .S(n1), .Q(n29) );
  MUX21X1 U7 ( .IN1(data[4]), .IN2(data[3]), .S(n1), .Q(n28) );
  MUX21X1 U8 ( .IN1(data[3]), .IN2(data[2]), .S(n1), .Q(n27) );
  MUX21X1 U9 ( .IN1(data[2]), .IN2(data[1]), .S(n1), .Q(n26) );
  MUX21X1 U10 ( .IN1(data[1]), .IN2(data[0]), .S(n1), .Q(n25) );
  NOR2X0 U11 ( .IN1(shift_cnt[0]), .IN2(n1), .QN(N9) );
  NOR2X0 U12 ( .IN1(n2), .IN2(n1), .QN(N12) );
  XOR2X1 U13 ( .IN1(n3), .IN2(shift_done), .Q(n2) );
  NAND2X0 U14 ( .IN1(shift_cnt[2]), .IN2(n4), .QN(n3) );
  NOR2X0 U15 ( .IN1(n5), .IN2(n1), .QN(N11) );
  INVX0 U16 ( .IN(data_ena), .QN(n1) );
  XNOR2X1 U17 ( .IN1(n4), .IN2(shift_cnt[2]), .Q(n5) );
  INVX0 U18 ( .IN(n6), .QN(n4) );
  AND3X1 U19 ( .IN1(n7), .IN2(n6), .IN3(data_ena), .Q(N10) );
  NAND2X0 U20 ( .IN1(shift_cnt[1]), .IN2(shift_cnt[0]), .QN(n6) );
  OR2X1 U21 ( .IN1(shift_cnt[1]), .IN2(shift_cnt[0]), .Q(n7) );
endmodule


module packet_type ( clk_50, reset_n, data, is_header_byte, 
        is_temperature_packet );
  input [7:0] data;
  input clk_50, reset_n, is_header_byte;
  output is_temperature_packet;
  wire   n9, n1, n2, n3, n4, n5, n6, n7;

  DFFARX1 is_temperature_packet_reg ( .D(n9), .CLK(clk_50), .RSTB(reset_n), 
        .Q(is_temperature_packet) );
  MUX21X1 U2 ( .IN1(is_temperature_packet), .IN2(n1), .S(is_header_byte), .Q(
        n9) );
  NOR4X0 U3 ( .IN1(n2), .IN2(n3), .IN3(data[4]), .IN4(data[3]), .QN(n1) );
  MUX21X1 U4 ( .IN1(n4), .IN2(n5), .S(data[5]), .Q(n3) );
  NAND3X0 U5 ( .IN1(n6), .IN2(n7), .IN3(data[2]), .QN(n5) );
  OR3X1 U6 ( .IN1(n6), .IN2(data[2]), .IN3(n7), .Q(n4) );
  INVX0 U7 ( .IN(data[6]), .QN(n7) );
  INVX0 U8 ( .IN(data[1]), .QN(n6) );
  NAND2X0 U9 ( .IN1(data[7]), .IN2(data[0]), .QN(n2) );
endmodule


module averager_controller ( clk_2, reset_n, fifo_empty, fifo_rd, averager_add, 
        averager_avg, ram_wr_n, averager_clr );
  input clk_2, reset_n, fifo_empty;
  output fifo_rd, averager_add, averager_avg, ram_wr_n, averager_clr;
  wire   n1, n3, n6, n7, n23, n24, n25, n2, n4, n5, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n26, n27, n28, n29, n30;
  wire   [2:0] averager_sm_ns;

  DFFARX1 \add_cnt_reg[0]  ( .D(n25), .CLK(clk_2), .RSTB(reset_n), .QN(n7) );
  DFFARX1 \averager_sm_ps_reg[0]  ( .D(averager_sm_ns[0]), .CLK(clk_2), .RSTB(
        reset_n), .Q(n4), .QN(n30) );
  DFFARX1 \add_cnt_reg[1]  ( .D(n23), .CLK(clk_2), .RSTB(reset_n), .QN(n6) );
  DFFARX1 \add_cnt_reg[2]  ( .D(n24), .CLK(clk_2), .RSTB(reset_n), .Q(n5) );
  DFFARX1 \averager_sm_ps_reg[1]  ( .D(averager_sm_ns[1]), .CLK(clk_2), .RSTB(
        reset_n), .Q(n2), .QN(n3) );
  DFFARX1 \averager_sm_ps_reg[2]  ( .D(averager_sm_ns[2]), .CLK(clk_2), .RSTB(
        reset_n), .Q(n8), .QN(n1) );
  NAND2X0 U3 ( .IN1(n9), .IN2(n10), .QN(ram_wr_n) );
  MUX21X1 U4 ( .IN1(n11), .IN2(averager_add), .S(n7), .Q(n25) );
  MUX21X1 U5 ( .IN1(n12), .IN2(n13), .S(n5), .Q(n24) );
  AO21X1 U6 ( .IN1(n6), .IN2(averager_add), .IN3(n14), .Q(n13) );
  NOR3X0 U7 ( .IN1(n15), .IN2(n7), .IN3(n6), .QN(n12) );
  MUX21X1 U8 ( .IN1(n14), .IN2(n16), .S(n6), .Q(n23) );
  NOR2X0 U9 ( .IN1(n7), .IN2(n15), .QN(n16) );
  AO21X1 U10 ( .IN1(n7), .IN2(averager_add), .IN3(n11), .Q(n14) );
  NOR2X0 U11 ( .IN1(n2), .IN2(n17), .QN(fifo_rd) );
  NAND2X0 U12 ( .IN1(n18), .IN2(n19), .QN(averager_sm_ns[2]) );
  OR3X1 U13 ( .IN1(n17), .IN2(n3), .IN3(n20), .Q(n19) );
  AO221X1 U14 ( .IN1(n21), .IN2(fifo_empty), .IN3(n3), .IN4(n11), .IN5(
        averager_add), .Q(averager_sm_ns[1]) );
  NOR2X0 U15 ( .IN1(n22), .IN2(n17), .QN(n21) );
  NAND2X0 U16 ( .IN1(n1), .IN2(n4), .QN(n17) );
  INVX0 U17 ( .IN(n20), .QN(n22) );
  NAND3X0 U18 ( .IN1(n18), .IN2(n15), .IN3(n26), .QN(averager_sm_ns[0]) );
  MUX21X1 U19 ( .IN1(n27), .IN2(n28), .S(n2), .Q(n26) );
  NAND2X0 U20 ( .IN1(n1), .IN2(n20), .QN(n28) );
  NAND3X0 U21 ( .IN1(n7), .IN2(n5), .IN3(n6), .QN(n20) );
  OR2X1 U22 ( .IN1(n4), .IN2(fifo_empty), .Q(n27) );
  INVX0 U23 ( .IN(averager_add), .QN(n15) );
  NOR2X0 U24 ( .IN1(n9), .IN2(n10), .QN(averager_clr) );
  AO22X1 U25 ( .IN1(n2), .IN2(n4), .IN3(n29), .IN4(n8), .Q(n10) );
  XNOR2X1 U26 ( .IN1(n29), .IN2(n1), .Q(n9) );
  XNOR2X1 U27 ( .IN1(n30), .IN2(n2), .Q(n29) );
  NOR2X0 U28 ( .IN1(n4), .IN2(n18), .QN(averager_avg) );
  NAND2X0 U29 ( .IN1(n3), .IN2(n8), .QN(n18) );
  NOR2X0 U30 ( .IN1(n11), .IN2(n3), .QN(averager_add) );
  NAND2X0 U31 ( .IN1(n1), .IN2(n30), .QN(n11) );
endmodule


module averager_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [9:1] carry;

  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XNOR2X1 U1 ( .IN1(B[9]), .IN2(n2), .Q(SUM[9]) );
  NAND2X0 U2 ( .IN1(B[8]), .IN2(carry[8]), .QN(n2) );
  XOR2X1 U3 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
  XOR2X1 U4 ( .IN1(B[8]), .IN2(carry[8]), .Q(SUM[8]) );
  AND2X1 U5 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
endmodule


module averager ( clk_2, reset_n, averager_clr, averager_add, averager_avg, 
        fifo_data, ram_data );
  input [7:0] fifo_data;
  output [7:0] ram_data;
  input clk_2, reset_n, averager_clr, averager_add, averager_avg;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n2, n3, n4, n5;
  wire   [9:8] temp_reg;

  averager_DW01_add_0 add_295 ( .A({1'b0, 1'b0, fifo_data}), .B({temp_reg, 
        ram_data}), .CI(1'b0), .SUM({N15, N14, N13, N12, N11, N10, N9, N8, N7, 
        N6}) );
  DFFARX1 \temp_reg_reg[9]  ( .D(n7), .CLK(clk_2), .RSTB(reset_n), .Q(
        temp_reg[9]) );
  DFFARX1 \temp_reg_reg[1]  ( .D(n15), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[1]) );
  DFFARX1 \temp_reg_reg[0]  ( .D(n16), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[0]) );
  DFFARX1 \temp_reg_reg[6]  ( .D(n10), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[6]) );
  DFFARX1 \temp_reg_reg[4]  ( .D(n12), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[4]) );
  DFFARX1 \temp_reg_reg[2]  ( .D(n14), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[2]) );
  DFFARX1 \temp_reg_reg[7]  ( .D(n9), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[7]) );
  DFFARX1 \temp_reg_reg[5]  ( .D(n11), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[5]) );
  DFFARX1 \temp_reg_reg[3]  ( .D(n13), .CLK(clk_2), .RSTB(reset_n), .Q(
        ram_data[3]) );
  DFFARX1 \temp_reg_reg[8]  ( .D(n8), .CLK(clk_2), .RSTB(reset_n), .Q(
        temp_reg[8]) );
  AO222X1 U2 ( .IN1(ram_data[7]), .IN2(n2), .IN3(temp_reg[9]), .IN4(n3), .IN5(
        N13), .IN6(n4), .Q(n9) );
  AO22X1 U4 ( .IN1(N14), .IN2(n4), .IN3(temp_reg[8]), .IN4(n2), .Q(n8) );
  AO22X1 U5 ( .IN1(N15), .IN2(n4), .IN3(n2), .IN4(temp_reg[9]), .Q(n7) );
  AO222X1 U6 ( .IN1(ram_data[0]), .IN2(n2), .IN3(ram_data[2]), .IN4(n3), .IN5(
        N6), .IN6(n4), .Q(n16) );
  AO222X1 U7 ( .IN1(ram_data[1]), .IN2(n2), .IN3(ram_data[3]), .IN4(n3), .IN5(
        N7), .IN6(n4), .Q(n15) );
  AO222X1 U8 ( .IN1(ram_data[2]), .IN2(n2), .IN3(ram_data[4]), .IN4(n3), .IN5(
        N8), .IN6(n4), .Q(n14) );
  AO222X1 U9 ( .IN1(ram_data[3]), .IN2(n2), .IN3(ram_data[5]), .IN4(n3), .IN5(
        N9), .IN6(n4), .Q(n13) );
  AO222X1 U10 ( .IN1(ram_data[4]), .IN2(n2), .IN3(ram_data[6]), .IN4(n3), 
        .IN5(N10), .IN6(n4), .Q(n12) );
  AO222X1 U11 ( .IN1(ram_data[5]), .IN2(n2), .IN3(ram_data[7]), .IN4(n3), 
        .IN5(N11), .IN6(n4), .Q(n11) );
  AO222X1 U12 ( .IN1(ram_data[6]), .IN2(n2), .IN3(temp_reg[8]), .IN4(n3), 
        .IN5(N12), .IN6(n4), .Q(n10) );
  NOR2X0 U13 ( .IN1(n5), .IN2(averager_clr), .QN(n4) );
  INVX0 U14 ( .IN(averager_add), .QN(n5) );
  NOR3X0 U15 ( .IN1(averager_add), .IN2(averager_clr), .IN3(n2), .QN(n3) );
  NOR3X0 U16 ( .IN1(averager_clr), .IN2(averager_avg), .IN3(averager_add), 
        .QN(n2) );
endmodule


module ram_addr_controller ( ram_wr_n, reset_n, ram_addr );
  output [10:0] ram_addr;
  input ram_wr_n, reset_n;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  DFFASX1 \ram_addr_reg[4]  ( .D(N19), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[4]), .QN(n5) );
  DFFASX1 \ram_addr_reg[8]  ( .D(N23), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[8]), .QN(n4) );
  DFFASX1 \ram_addr_reg[10]  ( .D(N25), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[10]) );
  DFFASX1 \ram_addr_reg[2]  ( .D(N17), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[2]) );
  DFFASX1 \ram_addr_reg[6]  ( .D(N21), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[6]) );
  DFFASX1 \ram_addr_reg[3]  ( .D(N18), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[3]), .QN(n2) );
  DFFASX1 \ram_addr_reg[7]  ( .D(N22), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[7]), .QN(n1) );
  DFFASX1 \ram_addr_reg[1]  ( .D(N16), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[1]) );
  DFFASX1 \ram_addr_reg[0]  ( .D(n3), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[0]), .QN(n3) );
  DFFASX1 \ram_addr_reg[5]  ( .D(N20), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[5]) );
  DFFASX1 \ram_addr_reg[9]  ( .D(N24), .CLK(ram_wr_n), .SETB(reset_n), .Q(
        ram_addr[9]) );
  AO22X1 U3 ( .IN1(n6), .IN2(n7), .IN3(ram_addr[10]), .IN4(n8), .Q(N25) );
  OR2X1 U4 ( .IN1(n9), .IN2(ram_addr[9]), .Q(n8) );
  NOR2X0 U5 ( .IN1(ram_addr[9]), .IN2(ram_addr[10]), .QN(n6) );
  XOR2X1 U6 ( .IN1(ram_addr[9]), .IN2(n7), .Q(N24) );
  INVX0 U7 ( .IN(n9), .QN(n7) );
  NAND2X0 U8 ( .IN1(n10), .IN2(n9), .QN(N23) );
  NAND3X0 U9 ( .IN1(n1), .IN2(n4), .IN3(n11), .QN(n9) );
  AO21X1 U10 ( .IN1(n11), .IN2(n1), .IN3(n4), .Q(n10) );
  XOR2X1 U11 ( .IN1(ram_addr[7]), .IN2(n11), .Q(N22) );
  AO21X1 U12 ( .IN1(ram_addr[6]), .IN2(n12), .IN3(n11), .Q(N21) );
  NOR3X0 U13 ( .IN1(ram_addr[5]), .IN2(ram_addr[6]), .IN3(n13), .QN(n11) );
  OR2X1 U14 ( .IN1(n13), .IN2(ram_addr[5]), .Q(n12) );
  XNOR2X1 U15 ( .IN1(ram_addr[5]), .IN2(n13), .Q(N20) );
  NAND2X0 U16 ( .IN1(n14), .IN2(n13), .QN(N19) );
  NAND3X0 U17 ( .IN1(n2), .IN2(n5), .IN3(n15), .QN(n13) );
  AO21X1 U18 ( .IN1(n15), .IN2(n2), .IN3(n5), .Q(n14) );
  XOR2X1 U19 ( .IN1(ram_addr[3]), .IN2(n15), .Q(N18) );
  AO21X1 U20 ( .IN1(ram_addr[2]), .IN2(n16), .IN3(n15), .Q(N17) );
  NOR3X0 U21 ( .IN1(ram_addr[1]), .IN2(ram_addr[2]), .IN3(ram_addr[0]), .QN(
        n15) );
  OR2X1 U22 ( .IN1(ram_addr[1]), .IN2(ram_addr[0]), .Q(n16) );
  XOR2X1 U23 ( .IN1(n3), .IN2(ram_addr[1]), .Q(N16) );
endmodule


module tas ( clk_50, clk_2, reset_n, serial_data, data_ena, ram_wr_n, ram_data, 
        ram_addr );
  output [7:0] ram_data;
  output [10:0] ram_addr;
  input clk_50, clk_2, reset_n, serial_data, data_ena;
  output ram_wr_n;
  wire   is_data_byte, is_temperature_packet, shift_done, fifo_wr, fifo_rd,
         fifo_empty, is_header_byte, averager_clr, averager_avg, averager_add;
  wire   [7:0] data;
  wire   [7:0] fifo_data;

  fifo fifo1 ( .wr_clk(clk_50), .rd_clk(clk_2), .reset_n(reset_n), .wr(fifo_wr), .rd(fifo_rd), .data_in(data), .data_out(fifo_data), .empty(fifo_empty) );
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
  AND3X1 U2 ( .IN1(is_temperature_packet), .IN2(is_data_byte), .IN3(shift_done), .Q(fifo_wr) );
endmodule

