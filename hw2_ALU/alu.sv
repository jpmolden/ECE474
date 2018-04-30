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
	case(opcode)
		c_add	:
			begin
			{alu_carry, alu_out} = in_a + in_b;
		end
		c_sub	:
			begin
			{alu_carry, alu_out} = in_a - in_b;
		 	end
		c_inc	:
			begin
			{alu_carry, alu_out} = in_a + 1;
		end
		c_dec	:
			begin
			alu_out = in_a - 1;
			alu_carry = 0;
		end
		c_or 	:
			begin
			alu_out = in_a | in_b;
			alu_carry = 0;
			end
		c_and	:
			begin
			alu_out = in_a & in_b;
			alu_carry = 0;
		end
		c_xor	:
			begin
			alu_out = in_a ^ in_b;
			alu_carry = 0;
		end
		c_shr	:
			begin
			alu_out = in_a >> 1;
			alu_carry = 0;
		end
		c_sh1	:
			begin
			{alu_carry, alu_out} = in_a << 1;
		end
		c_onescomp	:
			begin
			alu_out = ~in_a;
			alu_carry = 0;
		end
		c_twoscomp	:
			begin
			alu_out = ~in_a + 1;
			alu_carry = 0;
		end
		default		:
			begin
			alu_out = 0;
			alu_carry = 0;
		end
        endcase // opcode


assign alu_zero = ~|alu_out;



// Notes:
// While in the parent dir:
// Make a dir:
// 	vlib work
// Compile with:
// 	vlog alu.sv
// Simulate the rtl:
// 	vsim -novopt alu



endmodule

