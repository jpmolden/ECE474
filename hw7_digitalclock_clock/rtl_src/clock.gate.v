/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP2
// Date      : Fri Jun  8 22:20:44 2018
/////////////////////////////////////////////////////////////


module timer_seconds_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  INVX0 U1 ( .IN(A[0]), .QN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[6]), .IN2(A[6]), .Q(SUM[6]) );
endmodule


module timer_seconds ( reset_n, clk_1sec, time_seconds, even_second, min_tick
 );
  output [6:0] time_seconds;
  input reset_n, clk_1sec;
  output even_second, min_tick;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, n1,
         n2, n3;

  timer_seconds_DW01_inc_0 add_63 ( .A(time_seconds), .SUM({N10, N9, N8, N7, 
        N6, N5, N4}) );
  DFFARX1 \time_seconds_reg[1]  ( .D(N12), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[1]), .QN(n3) );
  DFFARX1 \time_seconds_reg[6]  ( .D(N17), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[6]) );
  DFFARX1 \time_seconds_reg[4]  ( .D(N15), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[4]) );
  DFFARX1 \time_seconds_reg[3]  ( .D(N14), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[3]) );
  DFFARX1 \time_seconds_reg[5]  ( .D(N16), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[5]) );
  DFFARX1 \time_seconds_reg[2]  ( .D(N13), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[2]) );
  DFFARX1 \time_seconds_reg[0]  ( .D(N11), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_seconds[0]), .QN(even_second) );
  INVX0 U3 ( .IN(n1), .QN(min_tick) );
  AND2X1 U4 ( .IN1(N10), .IN2(n1), .Q(N17) );
  AND2X1 U5 ( .IN1(N9), .IN2(n1), .Q(N16) );
  AND2X1 U6 ( .IN1(N8), .IN2(n1), .Q(N15) );
  AND2X1 U7 ( .IN1(N7), .IN2(n1), .Q(N14) );
  AND2X1 U8 ( .IN1(N6), .IN2(n1), .Q(N13) );
  AND2X1 U9 ( .IN1(N5), .IN2(n1), .Q(N12) );
  AND2X1 U10 ( .IN1(N4), .IN2(n1), .Q(N11) );
  NAND4X0 U11 ( .IN1(time_seconds[4]), .IN2(time_seconds[3]), .IN3(
        time_seconds[5]), .IN4(n2), .QN(n1) );
  NOR4X0 U12 ( .IN1(time_seconds[6]), .IN2(time_seconds[2]), .IN3(even_second), 
        .IN4(n3), .QN(n2) );
endmodule


module timer_minutes ( reset_n, clk_1sec, min_tick, time_minutes, hr_tick );
  output [6:0] time_minutes;
  input reset_n, clk_1sec, min_tick;
  output hr_tick;
  wire   N12, N13, N14, N15, N16, N17, N18, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13;

  DFFARX1 \time_minutes_reg[0]  ( .D(N12), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[0]) );
  DFFARX1 \time_minutes_reg[6]  ( .D(N18), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[6]) );
  DFFARX1 \time_minutes_reg[5]  ( .D(N17), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[5]) );
  DFFARX1 \time_minutes_reg[1]  ( .D(N13), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[1]) );
  DFFARX1 \time_minutes_reg[2]  ( .D(N14), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[2]) );
  DFFARX1 \time_minutes_reg[3]  ( .D(N15), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[3]), .QN(n1) );
  DFFARX1 \time_minutes_reg[4]  ( .D(N16), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_minutes[4]) );
  XNOR2X1 U3 ( .IN1(time_minutes[6]), .IN2(n2), .Q(N18) );
  NAND2X0 U4 ( .IN1(n3), .IN2(time_minutes[5]), .QN(n2) );
  NOR2X0 U5 ( .IN1(hr_tick), .IN2(n4), .QN(N17) );
  XNOR2X1 U6 ( .IN1(n3), .IN2(time_minutes[5]), .Q(n4) );
  AND2X1 U7 ( .IN1(n5), .IN2(time_minutes[4]), .Q(n3) );
  NOR2X0 U8 ( .IN1(hr_tick), .IN2(n6), .QN(N16) );
  XNOR2X1 U9 ( .IN1(time_minutes[4]), .IN2(n5), .Q(n6) );
  NOR2X0 U10 ( .IN1(n7), .IN2(n1), .QN(n5) );
  NOR2X0 U11 ( .IN1(hr_tick), .IN2(n8), .QN(N15) );
  XNOR2X1 U12 ( .IN1(n7), .IN2(n1), .Q(n8) );
  NAND2X0 U13 ( .IN1(time_minutes[2]), .IN2(n9), .QN(n7) );
  NOR2X0 U14 ( .IN1(hr_tick), .IN2(n10), .QN(N14) );
  XNOR2X1 U15 ( .IN1(n9), .IN2(time_minutes[2]), .Q(n10) );
  INVX0 U16 ( .IN(n11), .QN(n9) );
  NOR4X0 U17 ( .IN1(time_minutes[2]), .IN2(time_minutes[6]), .IN3(n11), .IN4(
        n12), .QN(hr_tick) );
  NAND3X0 U18 ( .IN1(time_minutes[5]), .IN2(time_minutes[3]), .IN3(
        time_minutes[4]), .QN(n12) );
  NAND2X0 U19 ( .IN1(time_minutes[1]), .IN2(n13), .QN(n11) );
  XOR2X1 U20 ( .IN1(time_minutes[1]), .IN2(n13), .Q(N13) );
  AND2X1 U21 ( .IN1(time_minutes[0]), .IN2(min_tick), .Q(n13) );
  XOR2X1 U22 ( .IN1(time_minutes[0]), .IN2(min_tick), .Q(N12) );
endmodule


module timer_hours ( reset_n, clk_1sec, hr_tick, time_hrs, am_pm );
  output [6:0] time_hrs;
  input reset_n, clk_1sec, hr_tick;
  output am_pm;
  wire   N12, N13, N14, N15, N16, N17, N18, n13, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n14, n15, n16, n17, n18;

  DFFARX1 am_pm_reg ( .D(n13), .CLK(clk_1sec), .RSTB(reset_n), .Q(am_pm), .QN(
        n18) );
  DFFARX1 \time_hrs_reg[4]  ( .D(N16), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[4]), .QN(n1) );
  DFFARX1 \time_hrs_reg[0]  ( .D(N12), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[0]) );
  DFFARX1 \time_hrs_reg[3]  ( .D(N15), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[3]), .QN(n3) );
  DFFARX1 \time_hrs_reg[6]  ( .D(N18), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[6]) );
  DFFARX1 \time_hrs_reg[2]  ( .D(N14), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[2]) );
  DFFARX1 \time_hrs_reg[5]  ( .D(N17), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[5]) );
  DFFARX1 \time_hrs_reg[1]  ( .D(N13), .CLK(clk_1sec), .RSTB(reset_n), .Q(
        time_hrs[1]), .QN(n2) );
  XOR2X1 U3 ( .IN1(n4), .IN2(n18), .Q(n13) );
  NAND4X0 U4 ( .IN1(n5), .IN2(n6), .IN3(n7), .IN4(n8), .QN(n4) );
  NAND2X0 U5 ( .IN1(n3), .IN2(n1), .QN(n8) );
  NOR2X0 U6 ( .IN1(time_hrs[6]), .IN2(time_hrs[5]), .QN(n7) );
  MUX21X1 U7 ( .IN1(n1), .IN2(n3), .S(time_hrs[2]), .Q(n5) );
  XNOR2X1 U8 ( .IN1(time_hrs[6]), .IN2(n9), .Q(N18) );
  NAND2X0 U9 ( .IN1(time_hrs[5]), .IN2(n10), .QN(n9) );
  XOR2X1 U10 ( .IN1(time_hrs[5]), .IN2(n10), .Q(N17) );
  NOR2X0 U11 ( .IN1(n11), .IN2(n1), .QN(n10) );
  NOR2X0 U12 ( .IN1(n12), .IN2(n14), .QN(N16) );
  XNOR2X1 U13 ( .IN1(n11), .IN2(n1), .Q(n14) );
  OR2X1 U14 ( .IN1(n15), .IN2(n3), .Q(n11) );
  NOR2X0 U15 ( .IN1(n12), .IN2(n16), .QN(N15) );
  XNOR2X1 U16 ( .IN1(n15), .IN2(n3), .Q(n16) );
  NOR4X0 U17 ( .IN1(n15), .IN2(n1), .IN3(time_hrs[5]), .IN4(time_hrs[6]), .QN(
        n12) );
  NAND2X0 U18 ( .IN1(n6), .IN2(time_hrs[2]), .QN(n15) );
  XOR2X1 U19 ( .IN1(time_hrs[2]), .IN2(n6), .Q(N14) );
  NOR2X0 U20 ( .IN1(n2), .IN2(n17), .QN(n6) );
  XNOR2X1 U21 ( .IN1(time_hrs[1]), .IN2(n17), .Q(N13) );
  NAND2X0 U22 ( .IN1(time_hrs[0]), .IN2(hr_tick), .QN(n17) );
  XOR2X1 U23 ( .IN1(time_hrs[0]), .IN2(hr_tick), .Q(N12) );
endmodule


module convert_24 ( time_hrs, am_pm, mil_time, time_hrs_f );
  input [6:0] time_hrs;
  output [6:0] time_hrs_f;
  input am_pm, mil_time;
  wire   \time_hrs[1] , \time_hrs[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14;
  assign time_hrs_f[1] = \time_hrs[1] ;
  assign \time_hrs[1]  = time_hrs[1];
  assign time_hrs_f[0] = \time_hrs[0] ;
  assign \time_hrs[0]  = time_hrs[0];

  MUX21X1 U3 ( .IN1(n1), .IN2(n2), .S(time_hrs[6]), .Q(time_hrs_f[6]) );
  OR2X1 U4 ( .IN1(n3), .IN2(time_hrs[5]), .Q(n2) );
  AO21X1 U5 ( .IN1(time_hrs[5]), .IN2(n3), .IN3(n1), .Q(time_hrs_f[5]) );
  AND3X1 U6 ( .IN1(n4), .IN2(n5), .IN3(n6), .Q(n1) );
  INVX0 U7 ( .IN(time_hrs[5]), .QN(n5) );
  NAND2X0 U8 ( .IN1(n7), .IN2(n4), .QN(n3) );
  INVX0 U9 ( .IN(n8), .QN(n7) );
  AO22X1 U10 ( .IN1(n4), .IN2(n6), .IN3(n9), .IN4(time_hrs[4]), .Q(
        time_hrs_f[4]) );
  AO21X1 U11 ( .IN1(time_hrs[2]), .IN2(time_hrs[3]), .IN3(n8), .Q(n9) );
  AOI21X1 U12 ( .IN1(time_hrs[3]), .IN2(time_hrs[2]), .IN3(time_hrs[4]), .QN(
        n4) );
  AO222X1 U13 ( .IN1(time_hrs[3]), .IN2(n8), .IN3(n6), .IN4(n10), .IN5(n11), 
        .IN6(n12), .Q(time_hrs_f[3]) );
  AO21X1 U14 ( .IN1(n11), .IN2(n12), .IN3(n13), .Q(time_hrs_f[2]) );
  MUX21X1 U15 ( .IN1(n6), .IN2(n8), .S(time_hrs[2]), .Q(n13) );
  NOR2X0 U16 ( .IN1(n8), .IN2(n11), .QN(n6) );
  NAND2X0 U17 ( .IN1(am_pm), .IN2(n12), .QN(n8) );
  INVX0 U18 ( .IN(mil_time), .QN(n12) );
  NOR4X0 U19 ( .IN1(\time_hrs[0] ), .IN2(\time_hrs[1] ), .IN3(n10), .IN4(n14), 
        .QN(n11) );
  OR3X1 U20 ( .IN1(time_hrs[4]), .IN2(time_hrs[6]), .IN3(time_hrs[5]), .Q(n14)
         );
  XOR2X1 U21 ( .IN1(time_hrs[2]), .IN2(time_hrs[3]), .Q(n10) );
endmodule


module digit_select_sm ( clk_1ms, reset_n, digit_select );
  output [2:0] digit_select;
  input clk_1ms, reset_n;
  wire   N7, N8, N9, n1, n2, n3, n4;

  DFFASX1 \digit_select_reg[2]  ( .D(N9), .CLK(clk_1ms), .SETB(reset_n), .Q(
        digit_select[2]) );
  DFFARX1 \digit_select_reg[1]  ( .D(N8), .CLK(clk_1ms), .RSTB(reset_n), .Q(
        digit_select[1]), .QN(n4) );
  DFFARX1 \digit_select_reg[0]  ( .D(N7), .CLK(clk_1ms), .RSTB(reset_n), .Q(
        digit_select[0]), .QN(n1) );
  XNOR2X1 U3 ( .IN1(n2), .IN2(digit_select[2]), .Q(N9) );
  OA21X1 U4 ( .IN1(n2), .IN2(digit_select[2]), .IN3(n3), .Q(N8) );
  XNOR2X1 U5 ( .IN1(n1), .IN2(n4), .Q(n3) );
  NAND2X0 U6 ( .IN1(n4), .IN2(n1), .QN(n2) );
  OA21X1 U7 ( .IN1(digit_select[1]), .IN2(digit_select[2]), .IN3(n1), .Q(N7)
         );
endmodule


module digit_parse_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [6:0] a;
  input [3:0] b;
  output [6:0] quotient;
  output [3:0] remainder;
  output divide_by_0;
  wire   n13, n14, n15, \a[0] , \u_div/SumTmp[0][2] , \u_div/SumTmp[0][3] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[1][3] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[3][3] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[3][1] , \u_div/PartRem[3][2] , \u_div/PartRem[3][3] ,
         \u_div/PartRem[3][4] , \u_div/PartRem[4][1] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[6][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12;
  assign remainder[0] = \a[0] ;
  assign \a[0]  = a[0];
  assign \u_div/PartRem[1][1]  = a[1];
  assign \u_div/PartRem[2][1]  = a[2];
  assign \u_div/PartRem[3][1]  = a[3];
  assign \u_div/PartRem[4][1]  = a[4];
  assign \u_div/PartRem[5][1]  = a[5];
  assign \u_div/PartRem[6][1]  = a[6];

  AND2X1 U1 ( .IN1(\u_div/PartRem[2][3] ), .IN2(\u_div/CryTmp[1][3] ), .Q(n1)
         );
  AND2X1 U2 ( .IN1(\u_div/PartRem[1][3] ), .IN2(\u_div/CryTmp[0][3] ), .Q(n2)
         );
  AND2X1 U3 ( .IN1(\u_div/PartRem[3][3] ), .IN2(\u_div/CryTmp[2][3] ), .Q(n3)
         );
  OR2X1 U4 ( .IN1(\u_div/PartRem[2][4] ), .IN2(n1), .Q(n14) );
  XOR2X1 U5 ( .IN1(\u_div/CryTmp[2][3] ), .IN2(\u_div/PartRem[3][3] ), .Q(
        \u_div/SumTmp[2][3] ) );
  XOR2X1 U6 ( .IN1(\u_div/CryTmp[1][3] ), .IN2(\u_div/PartRem[2][3] ), .Q(
        \u_div/SumTmp[1][3] ) );
  OR2X1 U7 ( .IN1(\u_div/PartRem[3][4] ), .IN2(n3), .Q(n13) );
  OR2X1 U8 ( .IN1(\u_div/PartRem[1][4] ), .IN2(n2), .Q(n15) );
  INVX0 U9 ( .IN(\u_div/PartRem[2][2] ), .QN(n6) );
  INVX0 U10 ( .IN(\u_div/PartRem[3][2] ), .QN(n7) );
  INVX0 U11 ( .IN(\u_div/PartRem[1][2] ), .QN(n5) );
  INVX0 U12 ( .IN(\u_div/PartRem[3][1] ), .QN(n11) );
  INVX0 U13 ( .IN(\u_div/PartRem[4][1] ), .QN(n10) );
  INVX0 U14 ( .IN(\u_div/PartRem[2][1] ), .QN(n12) );
  XOR2X1 U15 ( .IN1(\u_div/CryTmp[3][3] ), .IN2(\u_div/PartRem[6][1] ), .Q(
        \u_div/SumTmp[3][3] ) );
  XOR2X1 U16 ( .IN1(n8), .IN2(\u_div/PartRem[4][1] ), .Q(\u_div/SumTmp[3][2] )
         );
  XOR2X1 U17 ( .IN1(n6), .IN2(\u_div/PartRem[2][1] ), .Q(\u_div/SumTmp[1][2] )
         );
  XOR2X1 U18 ( .IN1(n7), .IN2(\u_div/PartRem[3][1] ), .Q(\u_div/SumTmp[2][2] )
         );
  INVX0 U19 ( .IN(\u_div/PartRem[5][1] ), .QN(n8) );
  XOR2X1 U20 ( .IN1(\u_div/CryTmp[0][3] ), .IN2(\u_div/PartRem[1][3] ), .Q(
        \u_div/SumTmp[0][3] ) );
  NAND2X0 U21 ( .IN1(n11), .IN2(n7), .QN(\u_div/CryTmp[2][3] ) );
  NAND2X0 U22 ( .IN1(n10), .IN2(n8), .QN(\u_div/CryTmp[3][3] ) );
  NAND2X0 U23 ( .IN1(n12), .IN2(n6), .QN(\u_div/CryTmp[1][3] ) );
  AND2X1 U24 ( .IN1(\u_div/PartRem[6][1] ), .IN2(\u_div/CryTmp[3][3] ), .Q(n4)
         );
  XOR2X1 U25 ( .IN1(n5), .IN2(\u_div/PartRem[1][1] ), .Q(\u_div/SumTmp[0][2] )
         );
  INVX0 U26 ( .IN(\u_div/PartRem[1][1] ), .QN(n9) );
  NAND2X0 U27 ( .IN1(n9), .IN2(n5), .QN(\u_div/CryTmp[0][3] ) );
  MUX21X1 U28 ( .IN1(\u_div/PartRem[6][1] ), .IN2(\u_div/SumTmp[3][3] ), .S(n4), .Q(\u_div/PartRem[3][4] ) );
  MUX21X1 U29 ( .IN1(\u_div/PartRem[3][3] ), .IN2(\u_div/SumTmp[2][3] ), .S(
        n13), .Q(\u_div/PartRem[2][4] ) );
  MUX21X1 U30 ( .IN1(\u_div/PartRem[5][1] ), .IN2(\u_div/SumTmp[3][2] ), .S(n4), .Q(\u_div/PartRem[3][3] ) );
  MUX21X1 U31 ( .IN1(\u_div/PartRem[2][3] ), .IN2(\u_div/SumTmp[1][3] ), .S(
        n14), .Q(\u_div/PartRem[1][4] ) );
  MUX21X1 U32 ( .IN1(\u_div/PartRem[3][2] ), .IN2(\u_div/SumTmp[2][2] ), .S(
        n13), .Q(\u_div/PartRem[2][3] ) );
  MUX21X1 U33 ( .IN1(\u_div/PartRem[4][1] ), .IN2(n10), .S(n4), .Q(
        \u_div/PartRem[3][2] ) );
  MUX21X1 U34 ( .IN1(\u_div/PartRem[1][3] ), .IN2(\u_div/SumTmp[0][3] ), .S(
        n15), .Q(remainder[3]) );
  MUX21X1 U35 ( .IN1(\u_div/PartRem[2][2] ), .IN2(\u_div/SumTmp[1][2] ), .S(
        n14), .Q(\u_div/PartRem[1][3] ) );
  MUX21X1 U36 ( .IN1(\u_div/PartRem[3][1] ), .IN2(n11), .S(n13), .Q(
        \u_div/PartRem[2][2] ) );
  MUX21X1 U37 ( .IN1(\u_div/PartRem[1][2] ), .IN2(\u_div/SumTmp[0][2] ), .S(
        n15), .Q(remainder[2]) );
  MUX21X1 U38 ( .IN1(\u_div/PartRem[2][1] ), .IN2(n12), .S(n14), .Q(
        \u_div/PartRem[1][2] ) );
  MUX21X1 U39 ( .IN1(\u_div/PartRem[1][1] ), .IN2(n9), .S(n15), .Q(
        remainder[1]) );
endmodule


module digit_parse_DW_div_uns_3 ( a, b, quotient, remainder, divide_by_0 );
  input [6:0] a;
  input [3:0] b;
  output [6:0] quotient;
  output [3:0] remainder;
  output divide_by_0;
  wire   n13, n14, n15, \a[0] , \u_div/SumTmp[0][2] , \u_div/SumTmp[0][3] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[1][3] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[3][3] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[3][1] , \u_div/PartRem[3][2] , \u_div/PartRem[3][3] ,
         \u_div/PartRem[3][4] , \u_div/PartRem[4][1] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[6][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12;
  assign remainder[0] = \a[0] ;
  assign \a[0]  = a[0];
  assign \u_div/PartRem[1][1]  = a[1];
  assign \u_div/PartRem[2][1]  = a[2];
  assign \u_div/PartRem[3][1]  = a[3];
  assign \u_div/PartRem[4][1]  = a[4];
  assign \u_div/PartRem[5][1]  = a[5];
  assign \u_div/PartRem[6][1]  = a[6];

  AND2X1 U1 ( .IN1(\u_div/PartRem[3][3] ), .IN2(\u_div/CryTmp[2][3] ), .Q(n1)
         );
  AND2X1 U2 ( .IN1(\u_div/PartRem[2][3] ), .IN2(\u_div/CryTmp[1][3] ), .Q(n2)
         );
  AND2X1 U3 ( .IN1(\u_div/PartRem[1][3] ), .IN2(\u_div/CryTmp[0][3] ), .Q(n3)
         );
  OR2X1 U4 ( .IN1(\u_div/PartRem[2][4] ), .IN2(n2), .Q(n14) );
  OR2X1 U5 ( .IN1(\u_div/PartRem[1][4] ), .IN2(n3), .Q(n15) );
  XOR2X1 U6 ( .IN1(\u_div/CryTmp[1][3] ), .IN2(\u_div/PartRem[2][3] ), .Q(
        \u_div/SumTmp[1][3] ) );
  XOR2X1 U7 ( .IN1(\u_div/CryTmp[2][3] ), .IN2(\u_div/PartRem[3][3] ), .Q(
        \u_div/SumTmp[2][3] ) );
  XOR2X1 U8 ( .IN1(\u_div/CryTmp[0][3] ), .IN2(\u_div/PartRem[1][3] ), .Q(
        \u_div/SumTmp[0][3] ) );
  OR2X1 U9 ( .IN1(\u_div/PartRem[3][4] ), .IN2(n1), .Q(n13) );
  INVX0 U10 ( .IN(\u_div/PartRem[3][2] ), .QN(n7) );
  INVX0 U11 ( .IN(\u_div/PartRem[2][2] ), .QN(n6) );
  INVX0 U12 ( .IN(\u_div/PartRem[1][2] ), .QN(n5) );
  INVX0 U13 ( .IN(\u_div/PartRem[4][1] ), .QN(n9) );
  INVX0 U14 ( .IN(\u_div/PartRem[3][1] ), .QN(n10) );
  INVX0 U15 ( .IN(\u_div/PartRem[2][1] ), .QN(n11) );
  XOR2X1 U16 ( .IN1(\u_div/CryTmp[3][3] ), .IN2(\u_div/PartRem[6][1] ), .Q(
        \u_div/SumTmp[3][3] ) );
  XOR2X1 U17 ( .IN1(n7), .IN2(\u_div/PartRem[3][1] ), .Q(\u_div/SumTmp[2][2] )
         );
  XOR2X1 U18 ( .IN1(n6), .IN2(\u_div/PartRem[2][1] ), .Q(\u_div/SumTmp[1][2] )
         );
  XOR2X1 U19 ( .IN1(n8), .IN2(\u_div/PartRem[4][1] ), .Q(\u_div/SumTmp[3][2] )
         );
  XOR2X1 U20 ( .IN1(n5), .IN2(\u_div/PartRem[1][1] ), .Q(\u_div/SumTmp[0][2] )
         );
  NAND2X0 U21 ( .IN1(n10), .IN2(n7), .QN(\u_div/CryTmp[2][3] ) );
  NAND2X0 U22 ( .IN1(n11), .IN2(n6), .QN(\u_div/CryTmp[1][3] ) );
  NAND2X0 U23 ( .IN1(n12), .IN2(n5), .QN(\u_div/CryTmp[0][3] ) );
  INVX0 U24 ( .IN(\u_div/PartRem[1][1] ), .QN(n12) );
  NAND2X0 U25 ( .IN1(n9), .IN2(n8), .QN(\u_div/CryTmp[3][3] ) );
  INVX0 U26 ( .IN(\u_div/PartRem[5][1] ), .QN(n8) );
  AND2X1 U27 ( .IN1(\u_div/PartRem[6][1] ), .IN2(\u_div/CryTmp[3][3] ), .Q(n4)
         );
  MUX21X1 U28 ( .IN1(\u_div/PartRem[6][1] ), .IN2(\u_div/SumTmp[3][3] ), .S(n4), .Q(\u_div/PartRem[3][4] ) );
  MUX21X1 U29 ( .IN1(\u_div/PartRem[3][3] ), .IN2(\u_div/SumTmp[2][3] ), .S(
        n13), .Q(\u_div/PartRem[2][4] ) );
  MUX21X1 U30 ( .IN1(\u_div/PartRem[5][1] ), .IN2(\u_div/SumTmp[3][2] ), .S(n4), .Q(\u_div/PartRem[3][3] ) );
  MUX21X1 U31 ( .IN1(\u_div/PartRem[2][3] ), .IN2(\u_div/SumTmp[1][3] ), .S(
        n14), .Q(\u_div/PartRem[1][4] ) );
  MUX21X1 U32 ( .IN1(\u_div/PartRem[3][2] ), .IN2(\u_div/SumTmp[2][2] ), .S(
        n13), .Q(\u_div/PartRem[2][3] ) );
  MUX21X1 U33 ( .IN1(\u_div/PartRem[4][1] ), .IN2(n9), .S(n4), .Q(
        \u_div/PartRem[3][2] ) );
  MUX21X1 U34 ( .IN1(\u_div/PartRem[1][3] ), .IN2(\u_div/SumTmp[0][3] ), .S(
        n15), .Q(remainder[3]) );
  MUX21X1 U35 ( .IN1(\u_div/PartRem[2][2] ), .IN2(\u_div/SumTmp[1][2] ), .S(
        n14), .Q(\u_div/PartRem[1][3] ) );
  MUX21X1 U36 ( .IN1(\u_div/PartRem[3][1] ), .IN2(n10), .S(n13), .Q(
        \u_div/PartRem[2][2] ) );
  MUX21X1 U37 ( .IN1(\u_div/PartRem[1][2] ), .IN2(\u_div/SumTmp[0][2] ), .S(
        n15), .Q(remainder[2]) );
  MUX21X1 U38 ( .IN1(\u_div/PartRem[2][1] ), .IN2(n11), .S(n14), .Q(
        \u_div/PartRem[1][2] ) );
  MUX21X1 U39 ( .IN1(\u_div/PartRem[1][1] ), .IN2(n12), .S(n15), .Q(
        remainder[1]) );
endmodule


module digit_parse ( time_minutes, time_hrs_f, even_second, am_pm, digit_0, 
        digit_1, digit_2, digit_3, digit_4 );
  input [6:0] time_minutes;
  input [6:0] time_hrs_f;
  output [6:0] digit_0;
  output [6:0] digit_1;
  output [6:0] digit_2;
  output [6:0] digit_3;
  output [6:0] digit_4;
  input even_second, am_pm;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, \digit_2[1] ;
  assign digit_2[3] = 1'b1;
  assign digit_2[4] = 1'b1;
  assign digit_2[5] = 1'b1;
  assign digit_2[6] = 1'b1;
  assign digit_3[4] = 1'b0;
  assign digit_3[5] = 1'b0;
  assign digit_3[6] = 1'b0;
  assign digit_0[4] = 1'b0;
  assign digit_0[5] = 1'b0;
  assign digit_0[6] = 1'b0;
  assign digit_2[0] = \digit_2[1] ;
  assign digit_2[1] = \digit_2[1] ;
  assign digit_1[6] = 1'b0;
  assign digit_1[5] = 1'b0;
  assign digit_1[4] = 1'b0;
  assign digit_4[6] = 1'b0;
  assign digit_4[5] = 1'b0;
  assign digit_4[4] = 1'b0;

  digit_parse_DW_div_uns_1 rem_207 ( .a(time_hrs_f), .b({1'b1, 1'b0, 1'b1, 
        1'b0}), .remainder(digit_3[3:0]) );
  digit_parse_DW_div_uns_3 rem_201 ( .a(time_minutes), .b({1'b1, 1'b0, 1'b1, 
        1'b0}), .remainder(digit_0[3:0]) );
  INVX0 U5 ( .IN(am_pm), .QN(digit_2[2]) );
  INVX0 U6 ( .IN(even_second), .QN(\digit_2[1] ) );
  NAND2X0 U7 ( .IN1(n3), .IN2(n4), .QN(digit_4[0]) );
  AO221X1 U8 ( .IN1(n5), .IN2(n6), .IN3(n7), .IN4(n8), .IN5(n9), .Q(n4) );
  OR2X1 U9 ( .IN1(digit_4[1]), .IN2(n8), .Q(n6) );
  INVX0 U10 ( .IN(time_hrs_f[1]), .QN(n5) );
  XNOR2X1 U11 ( .IN1(digit_4[1]), .IN2(n7), .Q(n3) );
  AO21X1 U12 ( .IN1(n10), .IN2(n7), .IN3(n11), .Q(digit_4[1]) );
  XOR2X1 U13 ( .IN1(digit_4[2]), .IN2(n12), .Q(n11) );
  AO22X1 U14 ( .IN1(n13), .IN2(digit_4[2]), .IN3(n14), .IN4(n15), .Q(n7) );
  NAND2X0 U15 ( .IN1(n16), .IN2(digit_4[2]), .QN(n15) );
  INVX0 U16 ( .IN(time_hrs_f[3]), .QN(n16) );
  NAND2X0 U17 ( .IN1(n9), .IN2(n8), .QN(n10) );
  INVX0 U18 ( .IN(time_hrs_f[2]), .QN(n8) );
  XNOR2X1 U19 ( .IN1(digit_4[2]), .IN2(time_hrs_f[3]), .Q(n9) );
  AO22X1 U20 ( .IN1(time_hrs_f[6]), .IN2(n17), .IN3(n12), .IN4(n18), .Q(
        digit_4[2]) );
  INVX0 U21 ( .IN(n13), .QN(n18) );
  NOR2X0 U22 ( .IN1(n14), .IN2(time_hrs_f[3]), .QN(n13) );
  XNOR2X1 U23 ( .IN1(n17), .IN2(time_hrs_f[4]), .Q(n14) );
  OA21X1 U24 ( .IN1(n17), .IN2(time_hrs_f[4]), .IN3(time_hrs_f[5]), .Q(n12) );
  INVX0 U25 ( .IN(digit_4[3]), .QN(n17) );
  OA21X1 U26 ( .IN1(time_hrs_f[5]), .IN2(time_hrs_f[4]), .IN3(time_hrs_f[6]), 
        .Q(digit_4[3]) );
  NAND2X0 U27 ( .IN1(n19), .IN2(n20), .QN(digit_1[0]) );
  AO221X1 U28 ( .IN1(n21), .IN2(n22), .IN3(n23), .IN4(n24), .IN5(n25), .Q(n20)
         );
  OR2X1 U29 ( .IN1(digit_1[1]), .IN2(n24), .Q(n22) );
  INVX0 U30 ( .IN(time_minutes[1]), .QN(n21) );
  XNOR2X1 U31 ( .IN1(digit_1[1]), .IN2(n23), .Q(n19) );
  AO21X1 U32 ( .IN1(n26), .IN2(n23), .IN3(n27), .Q(digit_1[1]) );
  XOR2X1 U33 ( .IN1(digit_1[2]), .IN2(n28), .Q(n27) );
  AO22X1 U34 ( .IN1(n29), .IN2(digit_1[2]), .IN3(n30), .IN4(n31), .Q(n23) );
  NAND2X0 U35 ( .IN1(n32), .IN2(digit_1[2]), .QN(n31) );
  INVX0 U36 ( .IN(time_minutes[3]), .QN(n32) );
  NAND2X0 U37 ( .IN1(n25), .IN2(n24), .QN(n26) );
  INVX0 U38 ( .IN(time_minutes[2]), .QN(n24) );
  XNOR2X1 U39 ( .IN1(digit_1[2]), .IN2(time_minutes[3]), .Q(n25) );
  AO22X1 U40 ( .IN1(time_minutes[6]), .IN2(n33), .IN3(n28), .IN4(n34), .Q(
        digit_1[2]) );
  INVX0 U41 ( .IN(n29), .QN(n34) );
  NOR2X0 U42 ( .IN1(n30), .IN2(time_minutes[3]), .QN(n29) );
  XNOR2X1 U43 ( .IN1(n33), .IN2(time_minutes[4]), .Q(n30) );
  OA21X1 U44 ( .IN1(n33), .IN2(time_minutes[4]), .IN3(time_minutes[5]), .Q(n28) );
  INVX0 U45 ( .IN(digit_1[3]), .QN(n33) );
  OA21X1 U46 ( .IN1(time_minutes[5]), .IN2(time_minutes[4]), .IN3(
        time_minutes[6]), .Q(digit_1[3]) );
endmodule


module segment_mux ( digit_select, digit_0, digit_1, digit_2, digit_3, digit_4, 
        segment_decimal );
  input [2:0] digit_select;
  input [6:0] digit_0;
  input [6:0] digit_1;
  input [6:0] digit_2;
  input [6:0] digit_3;
  input [6:0] digit_4;
  output [6:0] segment_decimal;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  AO221X1 U3 ( .IN1(digit_3[6]), .IN2(n1), .IN3(digit_4[6]), .IN4(n2), .IN5(n3), .Q(segment_decimal[6]) );
  AO222X1 U4 ( .IN1(digit_2[6]), .IN2(n4), .IN3(digit_1[6]), .IN4(n5), .IN5(
        digit_0[6]), .IN6(n6), .Q(n3) );
  AO221X1 U5 ( .IN1(digit_3[5]), .IN2(n1), .IN3(digit_4[5]), .IN4(n2), .IN5(n7), .Q(segment_decimal[5]) );
  AO222X1 U6 ( .IN1(digit_2[5]), .IN2(n4), .IN3(digit_1[5]), .IN4(n5), .IN5(
        digit_0[5]), .IN6(n6), .Q(n7) );
  NAND4X0 U7 ( .IN1(n8), .IN2(n9), .IN3(n10), .IN4(n11), .QN(
        segment_decimal[4]) );
  AOI222X1 U8 ( .IN1(digit_4[4]), .IN2(n2), .IN3(digit_0[4]), .IN4(n6), .IN5(
        digit_3[4]), .IN6(n1), .QN(n11) );
  NAND2X0 U9 ( .IN1(digit_2[4]), .IN2(n4), .QN(n10) );
  NAND2X0 U10 ( .IN1(digit_1[4]), .IN2(n5), .QN(n8) );
  NAND4X0 U11 ( .IN1(n12), .IN2(n9), .IN3(n13), .IN4(n14), .QN(
        segment_decimal[3]) );
  AOI222X1 U12 ( .IN1(digit_4[3]), .IN2(n2), .IN3(digit_0[3]), .IN4(n6), .IN5(
        digit_3[3]), .IN6(n1), .QN(n14) );
  NAND2X0 U13 ( .IN1(digit_2[3]), .IN2(n4), .QN(n13) );
  NAND2X0 U14 ( .IN1(digit_1[3]), .IN2(n5), .QN(n12) );
  AO221X1 U15 ( .IN1(digit_3[2]), .IN2(n1), .IN3(digit_4[2]), .IN4(n2), .IN5(
        n15), .Q(segment_decimal[2]) );
  AO222X1 U16 ( .IN1(digit_2[2]), .IN2(n4), .IN3(digit_1[2]), .IN4(n5), .IN5(
        digit_0[2]), .IN6(n6), .Q(n15) );
  AO221X1 U17 ( .IN1(digit_3[1]), .IN2(n1), .IN3(digit_4[1]), .IN4(n2), .IN5(
        n16), .Q(segment_decimal[1]) );
  AO222X1 U18 ( .IN1(digit_2[1]), .IN2(n4), .IN3(digit_1[1]), .IN4(n5), .IN5(
        digit_0[1]), .IN6(n6), .Q(n16) );
  NAND4X0 U19 ( .IN1(n17), .IN2(n9), .IN3(n18), .IN4(n19), .QN(
        segment_decimal[0]) );
  AOI222X1 U20 ( .IN1(digit_4[0]), .IN2(n2), .IN3(digit_0[0]), .IN4(n6), .IN5(
        digit_3[0]), .IN6(n1), .QN(n19) );
  AND3X1 U21 ( .IN1(digit_select[0]), .IN2(n20), .IN3(digit_select[1]), .Q(n1)
         );
  NOR2X0 U22 ( .IN1(n21), .IN2(digit_select[2]), .QN(n6) );
  NOR2X0 U23 ( .IN1(n20), .IN2(n21), .QN(n2) );
  NAND2X0 U24 ( .IN1(digit_2[0]), .IN2(n4), .QN(n18) );
  AND3X1 U25 ( .IN1(n22), .IN2(n20), .IN3(digit_select[1]), .Q(n4) );
  NAND2X0 U26 ( .IN1(digit_select[2]), .IN2(n21), .QN(n9) );
  NAND2X0 U27 ( .IN1(n22), .IN2(n23), .QN(n21) );
  INVX0 U28 ( .IN(digit_select[0]), .QN(n22) );
  NAND2X0 U29 ( .IN1(digit_1[0]), .IN2(n5), .QN(n17) );
  AND3X1 U30 ( .IN1(n23), .IN2(n20), .IN3(digit_select[0]), .Q(n5) );
  INVX0 U31 ( .IN(digit_select[2]), .QN(n20) );
  INVX0 U32 ( .IN(digit_select[1]), .QN(n23) );
endmodule


module segment_code ( segment_decimal, segment_data );
  input [6:0] segment_decimal;
  output [6:0] segment_data;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39;

  NAND2X0 U3 ( .IN1(n1), .IN2(n2), .QN(segment_data[6]) );
  NAND3X0 U4 ( .IN1(n3), .IN2(n4), .IN3(n5), .QN(n2) );
  MUX21X1 U5 ( .IN1(segment_decimal[2]), .IN2(n6), .S(segment_decimal[0]), .Q(
        n5) );
  NOR2X0 U6 ( .IN1(segment_decimal[2]), .IN2(n7), .QN(n6) );
  AO21X1 U7 ( .IN1(segment_decimal[2]), .IN2(n8), .IN3(n9), .Q(segment_data[5]) );
  INVX0 U8 ( .IN(n1), .QN(n9) );
  NAND3X0 U9 ( .IN1(n3), .IN2(n7), .IN3(n10), .QN(n1) );
  INVX0 U10 ( .IN(n11), .QN(n3) );
  NAND2X0 U11 ( .IN1(n12), .IN2(n13), .QN(segment_data[4]) );
  NAND3X0 U12 ( .IN1(n14), .IN2(n15), .IN3(segment_decimal[1]), .QN(n13) );
  NAND3X0 U13 ( .IN1(n16), .IN2(n17), .IN3(n12), .QN(segment_data[3]) );
  NOR4X0 U14 ( .IN1(n18), .IN2(n19), .IN3(n20), .IN4(n21), .QN(n12) );
  NOR2X0 U15 ( .IN1(n4), .IN2(n22), .QN(n20) );
  NAND2X0 U16 ( .IN1(segment_decimal[2]), .IN2(n10), .QN(n16) );
  MUX21X1 U17 ( .IN1(n23), .IN2(n24), .S(n25), .Q(segment_data[2]) );
  NOR2X0 U18 ( .IN1(n26), .IN2(n18), .QN(n24) );
  OA21X1 U19 ( .IN1(segment_decimal[3]), .IN2(n27), .IN3(n17), .Q(n26) );
  NAND3X0 U20 ( .IN1(n4), .IN2(n15), .IN3(segment_decimal[0]), .QN(n17) );
  OA21X1 U21 ( .IN1(segment_decimal[1]), .IN2(n15), .IN3(n14), .Q(n27) );
  AND3X1 U22 ( .IN1(n21), .IN2(n18), .IN3(n10), .Q(n23) );
  AO22X1 U23 ( .IN1(n8), .IN2(n15), .IN3(n28), .IN4(segment_decimal[1]), .Q(
        segment_data[1]) );
  NOR2X0 U24 ( .IN1(n14), .IN2(n11), .QN(n28) );
  NOR3X0 U25 ( .IN1(n7), .IN2(n10), .IN3(n11), .QN(n8) );
  AO21X1 U26 ( .IN1(segment_decimal[6]), .IN2(n29), .IN3(n30), .Q(n11) );
  INVX0 U27 ( .IN(n31), .QN(n30) );
  MUX21X1 U28 ( .IN1(n29), .IN2(segment_decimal[6]), .S(n7), .Q(n31) );
  XOR2X1 U29 ( .IN1(segment_decimal[0]), .IN2(n4), .Q(n10) );
  INVX0 U30 ( .IN(segment_decimal[1]), .QN(n4) );
  AO21X1 U31 ( .IN1(n29), .IN2(n32), .IN3(segment_decimal[5]), .Q(n7) );
  OR2X1 U32 ( .IN1(segment_decimal[3]), .IN2(segment_decimal[4]), .Q(n32) );
  NAND2X0 U33 ( .IN1(segment_decimal[4]), .IN2(segment_decimal[3]), .QN(n29)
         );
  NAND3X0 U34 ( .IN1(n33), .IN2(n34), .IN3(n35), .QN(segment_data[0]) );
  MUX21X1 U35 ( .IN1(n36), .IN2(n37), .S(segment_decimal[1]), .Q(n35) );
  OA21X1 U36 ( .IN1(n14), .IN2(n15), .IN3(n22), .Q(n37) );
  NAND2X0 U37 ( .IN1(n15), .IN2(n22), .QN(n36) );
  NAND2X0 U38 ( .IN1(n21), .IN2(n25), .QN(n34) );
  NOR2X0 U39 ( .IN1(n15), .IN2(n22), .QN(n21) );
  INVX0 U40 ( .IN(segment_decimal[3]), .QN(n22) );
  INVX0 U41 ( .IN(segment_decimal[2]), .QN(n15) );
  MUX21X1 U42 ( .IN1(n25), .IN2(n38), .S(n18), .Q(n33) );
  XOR2X1 U43 ( .IN1(n39), .IN2(segment_decimal[6]), .Q(n18) );
  AND3X1 U44 ( .IN1(n19), .IN2(n14), .IN3(segment_decimal[3]), .Q(n38) );
  INVX0 U45 ( .IN(segment_decimal[0]), .QN(n14) );
  INVX0 U46 ( .IN(n19), .QN(n25) );
  AO22X1 U47 ( .IN1(segment_decimal[5]), .IN2(segment_decimal[4]), .IN3(
        segment_decimal[6]), .IN4(n39), .Q(n19) );
  XOR2X1 U48 ( .IN1(segment_decimal[4]), .IN2(segment_decimal[5]), .Q(n39) );
endmodule


module clock ( reset_n, clk_1sec, clk_1ms, mil_time, segment_data, 
        digit_select );
  output [6:0] segment_data;
  output [2:0] digit_select;
  input reset_n, clk_1sec, clk_1ms, mil_time;
  wire   min_tick, even_second, hr_tick, am_pm;
  wire   [6:0] time_minutes;
  wire   [6:0] time_hrs;
  wire   [6:0] time_hrs_f;
  wire   [6:0] digit_4;
  wire   [6:0] digit_3;
  wire   [6:0] digit_2;
  wire   [6:0] digit_1;
  wire   [6:0] digit_0;
  wire   [6:0] segment_decimal;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;

  timer_seconds timer_seconds ( .reset_n(reset_n), .clk_1sec(clk_1sec), 
        .even_second(even_second), .min_tick(min_tick) );
  timer_minutes timer_minutes ( .reset_n(reset_n), .clk_1sec(clk_1sec), 
        .min_tick(min_tick), .time_minutes(time_minutes), .hr_tick(hr_tick) );
  timer_hours timer_hours ( .reset_n(reset_n), .clk_1sec(clk_1sec), .hr_tick(
        hr_tick), .time_hrs(time_hrs), .am_pm(am_pm) );
  convert_24 convert_24 ( .time_hrs(time_hrs), .am_pm(am_pm), .mil_time(
        mil_time), .time_hrs_f(time_hrs_f) );
  digit_select_sm digit_select_sm ( .clk_1ms(clk_1ms), .reset_n(reset_n), 
        .digit_select(digit_select) );
  digit_parse digit_parse ( .time_minutes(time_minutes), .time_hrs_f(
        time_hrs_f), .even_second(even_second), .am_pm(am_pm), .digit_0({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, digit_0[3:0]}), .digit_1({
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, digit_1[3:0]}), .digit_2({
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, digit_2[2:0]}), 
        .digit_3({SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, digit_3[3:0]}), .digit_4({
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, digit_4[3:0]}) );
  segment_mux segment_mux ( .digit_select(digit_select), .digit_0({1'b0, 1'b0, 
        1'b0, digit_0[3:0]}), .digit_1({1'b0, 1'b0, 1'b0, digit_1[3:0]}), 
        .digit_2({1'b1, 1'b1, 1'b1, 1'b1, digit_2[2:0]}), .digit_3({1'b0, 1'b0, 
        1'b0, digit_3[3:0]}), .digit_4({1'b0, 1'b0, 1'b0, digit_4[3:0]}), 
        .segment_decimal(segment_decimal) );
  segment_code segment_code ( .segment_decimal(segment_decimal), 
        .segment_data(segment_data) );
endmodule

