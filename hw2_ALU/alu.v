/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Fri Apr 20 04:26:51 2018
/////////////////////////////////////////////////////////////


module alu_DW01_addsub_0 ( A, B, CI, ADD_SUB, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI, ADD_SUB;
  output CO;

  wire   [9:0] carry;
  wire   [8:0] B_AS;
  assign carry[0] = ADD_SUB;

  FADDX1 U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FADDX1 U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FADDX1 U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FADDX1 U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FADDX1 U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FADDX1 U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FADDX1 U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  FADDX1 U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(carry[0]), .CO(carry[1]), .S(SUM[0]) );
  XOR2X1 U1 ( .IN1(carry[0]), .IN2(carry[8]), .Q(SUM[8]) );
  XOR2X1 U2 ( .IN1(B[7]), .IN2(carry[0]), .Q(B_AS[7]) );
  XOR2X1 U3 ( .IN1(B[6]), .IN2(carry[0]), .Q(B_AS[6]) );
  XOR2X1 U4 ( .IN1(B[5]), .IN2(carry[0]), .Q(B_AS[5]) );
  XOR2X1 U5 ( .IN1(B[4]), .IN2(carry[0]), .Q(B_AS[4]) );
  XOR2X1 U6 ( .IN1(B[3]), .IN2(carry[0]), .Q(B_AS[3]) );
  XOR2X1 U7 ( .IN1(B[2]), .IN2(carry[0]), .Q(B_AS[2]) );
  XOR2X1 U8 ( .IN1(B[1]), .IN2(carry[0]), .Q(B_AS[1]) );
  XOR2X1 U9 ( .IN1(B[0]), .IN2(carry[0]), .Q(B_AS[0]) );
endmodule


module alu ( in_a, in_b, opcode, alu_out, alu_zero, alu_carry );
  input [7:0] in_a;
  input [7:0] in_b;
  input [3:0] opcode;
  output [7:0] alu_out;
  output alu_zero, alu_carry;
  wire   N67, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, \U3/U1/Z_0 , \U3/U1/Z_1 ,
         \U3/U1/Z_2 , \U3/U1/Z_3 , \U3/U1/Z_4 , \U3/U1/Z_5 , \U3/U1/Z_6 ,
         \U3/U1/Z_7 , \U3/U2/Z_0 , \U3/U2/Z_1 , \U3/U2/Z_2 , \U3/U2/Z_3 ,
         \U3/U2/Z_4 , \U3/U2/Z_5 , \U3/U2/Z_6 , \U3/U2/Z_7 , \U3/U3/Z_0 , n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183;

  alu_DW01_addsub_0 r30 ( .A({1'b0, \U3/U1/Z_7 , \U3/U1/Z_6 , \U3/U1/Z_5 , 
        \U3/U1/Z_4 , \U3/U1/Z_3 , \U3/U1/Z_2 , \U3/U1/Z_1 , \U3/U1/Z_0 }), .B(
        {1'b0, \U3/U2/Z_7 , \U3/U2/Z_6 , \U3/U2/Z_5 , \U3/U2/Z_4 , \U3/U2/Z_3 , 
        \U3/U2/Z_2 , \U3/U2/Z_1 , \U3/U2/Z_0 }), .CI(1'b0), .ADD_SUB(
        \U3/U3/Z_0 ), .SUM({N67, N84, N83, N82, N81, N80, N79, N78, N77}) );
  INVX0 U123 ( .IN(n112), .QN(n144) );
  INVX0 U124 ( .IN(n114), .QN(n146) );
  INVX0 U125 ( .IN(n103), .QN(n147) );
  INVX0 U126 ( .IN(opcode[0]), .QN(n143) );
  INVX0 U127 ( .IN(opcode[2]), .QN(n145) );
  INVX0 U128 ( .IN(opcode[3]), .QN(n148) );
  NOR2X0 U129 ( .IN1(n145), .IN2(opcode[3]), .QN(n104) );
  AND2X1 U130 ( .IN1(n104), .IN2(opcode[0]), .Q(n105) );
  AND2X1 U131 ( .IN1(n105), .IN2(opcode[1]), .Q(n138) );
  AND3X1 U132 ( .IN1(opcode[1]), .IN2(n143), .IN3(n104), .Q(n135) );
  XNOR2X1 U133 ( .IN1(opcode[3]), .IN2(n143), .Q(n103) );
  AO22X1 U134 ( .IN1(n147), .IN2(opcode[1]), .IN3(n103), .IN4(n148), .Q(n107)
         );
  NAND2X0 U135 ( .IN1(n143), .IN2(n164), .QN(n112) );
  NAND2X0 U136 ( .IN1(n104), .IN2(n144), .QN(n114) );
  AO21X1 U137 ( .IN1(n107), .IN2(n145), .IN3(n146), .Q(n109) );
  AND2X1 U138 ( .IN1(n105), .IN2(n164), .Q(n139) );
  OA22X1 U139 ( .IN1(n182), .IN2(opcode[1]), .IN3(in_a[0]), .IN4(n164), .Q(
        n106) );
  NOR4X0 U140 ( .IN1(opcode[2]), .IN2(n147), .IN3(n107), .IN4(n106), .QN(n108)
         );
  AO221X1 U141 ( .IN1(N77), .IN2(n109), .IN3(N92), .IN4(n139), .IN5(n108), .Q(
        n110) );
  AO221X1 U142 ( .IN1(N108), .IN2(n138), .IN3(N100), .IN4(n135), .IN5(n110), 
        .Q(alu_out[0]) );
  NOR2X0 U143 ( .IN1(n148), .IN2(opcode[2]), .QN(n113) );
  AND2X1 U144 ( .IN1(n113), .IN2(n144), .Q(n132) );
  AND3X1 U145 ( .IN1(opcode[1]), .IN2(n143), .IN3(n113), .Q(n140) );
  AO22X1 U146 ( .IN1(n182), .IN2(n140), .IN3(N107), .IN4(n138), .Q(n111) );
  AO221X1 U147 ( .IN1(n132), .IN2(in_a[2]), .IN3(N91), .IN4(n139), .IN5(n111), 
        .Q(n118) );
  AND3X1 U148 ( .IN1(opcode[0]), .IN2(n164), .IN3(n113), .Q(n136) );
  NAND3X0 U149 ( .IN1(n148), .IN2(n145), .IN3(n112), .QN(n116) );
  NAND3X0 U150 ( .IN1(opcode[0]), .IN2(opcode[1]), .IN3(n113), .QN(n115) );
  NAND3X0 U151 ( .IN1(n116), .IN2(n115), .IN3(n114), .QN(n137) );
  AO222X1 U152 ( .IN1(N99), .IN2(n135), .IN3(in_a[0]), .IN4(n136), .IN5(N78), 
        .IN6(n137), .Q(n117) );
  OR2X1 U153 ( .IN1(n118), .IN2(n117), .Q(alu_out[1]) );
  AO22X1 U154 ( .IN1(n181), .IN2(n140), .IN3(N106), .IN4(n138), .Q(n119) );
  AO221X1 U155 ( .IN1(n132), .IN2(in_a[3]), .IN3(N90), .IN4(n139), .IN5(n119), 
        .Q(n121) );
  AO222X1 U156 ( .IN1(N98), .IN2(n135), .IN3(n136), .IN4(in_a[1]), .IN5(N79), 
        .IN6(n137), .Q(n120) );
  OR2X1 U157 ( .IN1(n121), .IN2(n120), .Q(alu_out[2]) );
  AO22X1 U158 ( .IN1(n180), .IN2(n140), .IN3(N105), .IN4(n138), .Q(n122) );
  AO221X1 U159 ( .IN1(n132), .IN2(in_a[4]), .IN3(N89), .IN4(n139), .IN5(n122), 
        .Q(n124) );
  AO222X1 U160 ( .IN1(N97), .IN2(n135), .IN3(n136), .IN4(in_a[2]), .IN5(N80), 
        .IN6(n137), .Q(n123) );
  OR2X1 U161 ( .IN1(n124), .IN2(n123), .Q(alu_out[3]) );
  AO22X1 U162 ( .IN1(n179), .IN2(n140), .IN3(N104), .IN4(n138), .Q(n125) );
  AO221X1 U163 ( .IN1(n132), .IN2(in_a[5]), .IN3(N88), .IN4(n139), .IN5(n125), 
        .Q(n127) );
  AO222X1 U164 ( .IN1(N96), .IN2(n135), .IN3(n136), .IN4(in_a[3]), .IN5(N81), 
        .IN6(n137), .Q(n126) );
  OR2X1 U165 ( .IN1(n127), .IN2(n126), .Q(alu_out[4]) );
  AO22X1 U166 ( .IN1(n178), .IN2(n140), .IN3(N103), .IN4(n138), .Q(n128) );
  AO221X1 U167 ( .IN1(n132), .IN2(in_a[6]), .IN3(N87), .IN4(n139), .IN5(n128), 
        .Q(n130) );
  AO222X1 U168 ( .IN1(N95), .IN2(n135), .IN3(n136), .IN4(in_a[4]), .IN5(N82), 
        .IN6(n137), .Q(n129) );
  OR2X1 U169 ( .IN1(n130), .IN2(n129), .Q(alu_out[5]) );
  AO22X1 U170 ( .IN1(n177), .IN2(n140), .IN3(N102), .IN4(n138), .Q(n131) );
  AO221X1 U171 ( .IN1(n132), .IN2(in_a[7]), .IN3(N86), .IN4(n139), .IN5(n131), 
        .Q(n134) );
  AO222X1 U172 ( .IN1(N94), .IN2(n135), .IN3(n136), .IN4(in_a[5]), .IN5(N83), 
        .IN6(n137), .Q(n133) );
  OR2X1 U173 ( .IN1(n134), .IN2(n133), .Q(alu_out[6]) );
  AOI222X1 U174 ( .IN1(N84), .IN2(n137), .IN3(n136), .IN4(in_a[6]), .IN5(N93), 
        .IN6(n135), .QN(n142) );
  AOI222X1 U175 ( .IN1(n176), .IN2(n140), .IN3(N85), .IN4(n139), .IN5(N101), 
        .IN6(n138), .QN(n141) );
  NAND2X0 U176 ( .IN1(n142), .IN2(n141), .QN(alu_out[7]) );
  NOR2X0 U177 ( .IN1(n149), .IN2(n150), .QN(alu_zero) );
  OR4X1 U178 ( .IN1(alu_out[1]), .IN2(alu_out[0]), .IN3(alu_out[3]), .IN4(
        alu_out[2]), .Q(n150) );
  OR4X1 U179 ( .IN1(alu_out[5]), .IN2(alu_out[4]), .IN3(alu_out[7]), .IN4(
        alu_out[6]), .Q(n149) );
  NAND2X0 U180 ( .IN1(n151), .IN2(n152), .QN(alu_carry) );
  NAND4X0 U181 ( .IN1(opcode[3]), .IN2(opcode[0]), .IN3(n153), .IN4(in_a[7]), 
        .QN(n152) );
  NOR2X0 U182 ( .IN1(opcode[2]), .IN2(opcode[1]), .QN(n153) );
  NAND2X0 U183 ( .IN1(N67), .IN2(n154), .QN(n151) );
  NAND3X0 U184 ( .IN1(n155), .IN2(n156), .IN3(n157), .QN(\U3/U3/Z_0 ) );
  NAND3X0 U185 ( .IN1(n158), .IN2(n143), .IN3(opcode[1]), .QN(n157) );
  INVX0 U186 ( .IN(n159), .QN(n155) );
  AO22X1 U187 ( .IN1(in_b[7]), .IN2(n160), .IN3(n159), .IN4(in_a[7]), .Q(
        \U3/U2/Z_7 ) );
  AO22X1 U188 ( .IN1(in_b[6]), .IN2(n160), .IN3(n159), .IN4(in_a[6]), .Q(
        \U3/U2/Z_6 ) );
  AO22X1 U189 ( .IN1(in_b[5]), .IN2(n160), .IN3(n159), .IN4(in_a[5]), .Q(
        \U3/U2/Z_5 ) );
  AO22X1 U190 ( .IN1(in_b[4]), .IN2(n160), .IN3(n159), .IN4(in_a[4]), .Q(
        \U3/U2/Z_4 ) );
  AO22X1 U191 ( .IN1(in_b[3]), .IN2(n160), .IN3(n159), .IN4(in_a[3]), .Q(
        \U3/U2/Z_3 ) );
  AO22X1 U192 ( .IN1(in_b[2]), .IN2(n160), .IN3(n159), .IN4(in_a[2]), .Q(
        \U3/U2/Z_2 ) );
  AO22X1 U193 ( .IN1(in_b[1]), .IN2(n160), .IN3(n159), .IN4(in_a[1]), .Q(
        \U3/U2/Z_1 ) );
  AO221X1 U194 ( .IN1(n159), .IN2(in_a[0]), .IN3(in_b[0]), .IN4(n160), .IN5(
        n161), .Q(\U3/U2/Z_0 ) );
  NAND2X0 U195 ( .IN1(n162), .IN2(n156), .QN(n161) );
  INVX0 U196 ( .IN(n163), .QN(n160) );
  NOR4X0 U197 ( .IN1(n164), .IN2(n148), .IN3(n143), .IN4(opcode[2]), .QN(n159)
         );
  NOR2X0 U198 ( .IN1(n176), .IN2(n165), .QN(\U3/U1/Z_7 ) );
  NOR2X0 U199 ( .IN1(n177), .IN2(n165), .QN(\U3/U1/Z_6 ) );
  NOR2X0 U200 ( .IN1(n178), .IN2(n165), .QN(\U3/U1/Z_5 ) );
  NOR2X0 U201 ( .IN1(n179), .IN2(n165), .QN(\U3/U1/Z_4 ) );
  NOR2X0 U202 ( .IN1(n180), .IN2(n165), .QN(\U3/U1/Z_3 ) );
  NOR2X0 U203 ( .IN1(n181), .IN2(n165), .QN(\U3/U1/Z_2 ) );
  NOR2X0 U204 ( .IN1(n182), .IN2(n165), .QN(\U3/U1/Z_1 ) );
  NOR2X0 U205 ( .IN1(n183), .IN2(n165), .QN(\U3/U1/Z_0 ) );
  NOR2X0 U206 ( .IN1(n154), .IN2(n166), .QN(n165) );
  INVX0 U207 ( .IN(n156), .QN(n166) );
  NAND4X0 U208 ( .IN1(opcode[2]), .IN2(n143), .IN3(n164), .IN4(n148), .QN(n156) );
  NAND2X0 U209 ( .IN1(n163), .IN2(n162), .QN(n154) );
  NAND3X0 U210 ( .IN1(n158), .IN2(opcode[0]), .IN3(opcode[1]), .QN(n162) );
  NAND2X0 U211 ( .IN1(n158), .IN2(n167), .QN(n163) );
  XNOR2X1 U212 ( .IN1(n164), .IN2(opcode[0]), .Q(n167) );
  INVX0 U213 ( .IN(opcode[1]), .QN(n164) );
  NOR2X0 U214 ( .IN1(opcode[2]), .IN2(opcode[3]), .QN(n158) );
  NOR2X0 U215 ( .IN1(n182), .IN2(n168), .QN(N99) );
  NOR2X0 U216 ( .IN1(n181), .IN2(n169), .QN(N98) );
  NOR2X0 U217 ( .IN1(n180), .IN2(n170), .QN(N97) );
  NOR2X0 U218 ( .IN1(n179), .IN2(n171), .QN(N96) );
  NOR2X0 U219 ( .IN1(n178), .IN2(n172), .QN(N95) );
  NOR2X0 U220 ( .IN1(n177), .IN2(n173), .QN(N94) );
  NOR2X0 U221 ( .IN1(n176), .IN2(n174), .QN(N93) );
  NAND2X0 U222 ( .IN1(n175), .IN2(n183), .QN(N92) );
  NAND2X0 U223 ( .IN1(n168), .IN2(n182), .QN(N91) );
  INVX0 U224 ( .IN(in_a[1]), .QN(n182) );
  NAND2X0 U225 ( .IN1(n169), .IN2(n181), .QN(N90) );
  INVX0 U226 ( .IN(in_a[2]), .QN(n181) );
  NAND2X0 U227 ( .IN1(n170), .IN2(n180), .QN(N89) );
  INVX0 U228 ( .IN(in_a[3]), .QN(n180) );
  NAND2X0 U229 ( .IN1(n171), .IN2(n179), .QN(N88) );
  INVX0 U230 ( .IN(in_a[4]), .QN(n179) );
  NAND2X0 U231 ( .IN1(n172), .IN2(n178), .QN(N87) );
  INVX0 U232 ( .IN(in_a[5]), .QN(n178) );
  NAND2X0 U233 ( .IN1(n173), .IN2(n177), .QN(N86) );
  INVX0 U234 ( .IN(in_a[6]), .QN(n177) );
  NAND2X0 U235 ( .IN1(n174), .IN2(n176), .QN(N85) );
  INVX0 U236 ( .IN(in_a[7]), .QN(n176) );
  XNOR2X1 U237 ( .IN1(n175), .IN2(in_a[0]), .Q(N108) );
  XNOR2X1 U238 ( .IN1(n168), .IN2(in_a[1]), .Q(N107) );
  INVX0 U239 ( .IN(in_b[1]), .QN(n168) );
  XNOR2X1 U240 ( .IN1(n169), .IN2(in_a[2]), .Q(N106) );
  INVX0 U241 ( .IN(in_b[2]), .QN(n169) );
  XNOR2X1 U242 ( .IN1(n170), .IN2(in_a[3]), .Q(N105) );
  INVX0 U243 ( .IN(in_b[3]), .QN(n170) );
  XNOR2X1 U244 ( .IN1(n171), .IN2(in_a[4]), .Q(N104) );
  INVX0 U245 ( .IN(in_b[4]), .QN(n171) );
  XNOR2X1 U246 ( .IN1(n172), .IN2(in_a[5]), .Q(N103) );
  INVX0 U247 ( .IN(in_b[5]), .QN(n172) );
  XNOR2X1 U248 ( .IN1(n173), .IN2(in_a[6]), .Q(N102) );
  INVX0 U249 ( .IN(in_b[6]), .QN(n173) );
  XNOR2X1 U250 ( .IN1(n174), .IN2(in_a[7]), .Q(N101) );
  INVX0 U251 ( .IN(in_b[7]), .QN(n174) );
  NOR2X0 U252 ( .IN1(n183), .IN2(n175), .QN(N100) );
  INVX0 U253 ( .IN(in_b[0]), .QN(n175) );
  INVX0 U254 ( .IN(in_a[0]), .QN(n183) );
endmodule

