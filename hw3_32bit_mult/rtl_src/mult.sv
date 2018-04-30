module mult(
	input  reset,
	input  clk,
	input  [31:0] a_in,
	input  [31:0] b_in,
	input  start,
	output logic [63:0] product,
	output logic done);

// internal wires
logic   [31:0]  reg_a;
logic   [31:0]  prod_reg_high;
logic   [31:0]  prod_reg_low;
logic           prod_reg_ld_high;
logic           prod_reg_shift_rt;
logic   [31:0]  prod_adder_sum;

// instantiate the controller block
    mult3_ctl mult3_ctl_0 (
    . reset ( reset ),
    . clk ( clk ),
    . start ( start ),
    . multiplier_bit0 ( product[0] ),
    . prod_reg_ld_high ( prod_reg_ld_high ),
    . prod_reg_shift_rt ( prod_reg_shift_rt ),
    . done ( done ));

// Low and High 32-bits of the product reg
    assign {prod_reg_high} = product[63:32];
    assign {prod_reg_low} = product[31:0];
    assign {prod_adder_sum} = product[63:32] + reg_a;

// multiplicand_reg
always_ff @(posedge clk, posedge reset)
    if (reset) reg_a <= '0;
    else reg_a <= a_in;

// product_reg
always_ff @(posedge clk, posedge reset)
    if(reset)
        product <= '0;
    else if (start)
        product[63:0] <= b_in;
    else if (prod_reg_ld_high)
        product[63:32] <= prod_adder_sum;
    else if (prod_reg_shift_rt)
        product <= (product >> 1);
    else
        product <= (product);
endmodule // mult


module mult3_ctl(
    input reset ,
    input clk ,
    input start , // begin multiplication
    input multiplier_bit0 ,
    output logic prod_reg_ld_high , // load high half of register
    output logic prod_reg_shift_rt , // shift product register right
    output logic done ); // signal completion of mult op

// declare internal wires
//multiplier state machine present state
logic   [5:0]   cycle_cnt; //covers 0-31 shifts (done)

enum logic [1:0]{
    TEST =  2'b00,
    SHIFT = 2'b01,
    ADD =   2'b10,
    IDLE =  2'b11
} mult_sm_ns, mult_sm_ps;

// Multiplier state machine
always_ff @(posedge clk, posedge reset)
    if (reset)      mult_sm_ps <= IDLE;
    else            mult_sm_ps <= mult_sm_ns;
    // Moore State machine combo logic
    always_comb begin
        case (mult_sm_ps)
            IDLE: begin
                if (start)
                    mult_sm_ns = TEST;
                else
                    mult_sm_ns = IDLE;
                end
            TEST: begin
                if (multiplier_bit0 && !done) mult_sm_ns = ADD;
                else if (!multiplier_bit0 && !done) mult_sm_ns = SHIFT;
                else mult_sm_ns = IDLE;
            end
            ADD: mult_sm_ns = SHIFT;
            SHIFT:mult_sm_ns = TEST;
        endcase
end

// Assign outputs load and shift
always_comb begin
    prod_reg_ld_high    = mult_sm_ps[1] & !mult_sm_ps[0];
    prod_reg_shift_rt   = !mult_sm_ps[1] & mult_sm_ps[0];
    done = cycle_cnt[5]; //cycle_cnt (31 = b011111, 32 = b100000)
end

// Done/Not Done State machine
always_ff @(posedge clk, posedge reset)
    if (reset) cycle_cnt <= '0;
    else if (mult_sm_ps == SHIFT)
        cycle_cnt <= cycle_cnt + 1; // increment the number of shifts
    // always_comb begin
    //  done = cycle_cnt[5];
    // end
endmodule

