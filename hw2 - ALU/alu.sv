module alu(
	input		[7:0]	in_a	,	//input a
	input		[7:0]	in_b	,	//input b
	input		[3:0]	opcode	,	//opcode input
	output	reg	[7:0]	alu_out	,	//alu_output
	output	reg			alu_zero,	//logic '1' when alu_output [7:0] is all zeros
	output	reg			alu_carry	//indicates a carry out from ALU
	);


	parameter c_add =	4'h1;
	parameter c_sub =	4'h2;
	parameter c_inc =	4'h3;
	parameter c_dec =	4'h4;
	parameter c_or  =	4'h5;
	parameter c_and =	4'h6;
	parameter c_xor =	4'h7;
	parameter c_shr =	4'h8;
	parameter c_sh1 =	4'h9;
	parameter c_onescomp =	4'hA;
	parameter c_twoscomp =	4'hB;


//TODO: Change to actual operations, for testing compiler

always_comb
	unique case(opcode)
		c_add	: alu_out = in_a + in_b;
		c_sub	: alu_out = in_a + in_b;
		c_inc	: alu_out = in_a + in_b;
		c_dec	: alu_out = in_a + in_b;
		c_or 	: alu_out = in_a || in_b;
		c_and	: alu_out = in_a && in_b;
		c_xor	: alu_out = in_a ^ in_b;
		c_shr	: alu_out = in_a >> 1;
		c_sh1	: alu_out = in_a << 1;
		c_onescomp	: alu_out = in_a + in_b;
		c_twoscomp	: alu_out = in_a + in_b;
        endcase // opcode

// Notes:
// While in the parent dir:
// Make a dir:
// 	vlib work
// Compile with:
// 	vlog alu.sv
// Simulate the rtl:
// 	vsim -novopt alu



endmodule

