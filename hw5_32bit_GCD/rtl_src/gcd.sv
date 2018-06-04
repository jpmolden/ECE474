//-------------------------------------------------------------------
// Top-level module - greatest common divisor
//-------------------------------------------------------------------
module gcd( input [31:0] a_in,          // operand a
            input [31:0] b_in,          // operand b
            input start,                // validates the input data
            input reset_n,              // reset
            input clk,                  // clock
            output reg [31:0] result,   // output of GCD engine
            output reg done             // single clock cycle done strobe
            );
    // internal connections
    logic [31:0] reg_a;
    logic [31:0] reg_b;
    logic        swap;
    logic        load;

    // comparitor outputs
    logic        a_less_b;
    logic        zeros;

    // muxes
    logic [31:0] mux1_out;
    logic [31:0] mux2_out;

    // reg_a - holds the running total
    always_ff @(posedge clk)
        if(start)
          reg_a <= a_in;
        else if(load)
          reg_a <= mux1_out;

    // reg_b - holds the other running value
    always_ff @(posedge clk)
        if(start)
          reg_b <= b_in;
        else if(load)
          reg_b <= mux2_out;

    // mux 1 - controls the Din to reg_a
    always_comb begin
        if(start)
           mux1_out = a_in;
        else if(swap && load)
            mux1_out = reg_b;
        else
            mux1_out = reg_a - reg_b;
    end

    // mux 1 - controls the Din to reg_b
    always_comb begin
        if(start)
           mux2_out = a_in;
        else if(swap && load)
            mux2_out = reg_a;
        else
            mux2_out= reg_b;
    end

    // result and and running total
    always_ff @(posedge clk) begin
        if(~reset_n)
            result <= '0;
        else if(a_less_b)
            result <= reg_b;
        else
            result <= reg_a;
        end

    // Always compare the Q out of reg_a and reg_b
    compare compare_0(.*);

    // State machine controller
    GCD_controller GCD_controller_1(.*);
endmodule // gcd



module compare (
    input [31:0]        reg_a,
    input [31:0]        reg_b,
    output logic        a_less_b,
    output logic        zeros
    );

    always_comb begin
        if(reg_a < reg_b) begin
            a_less_b = 1;
        end // if(compare_1in > compare_2in)
        else begin
            a_less_b = '0;
        end
    end

    // reg_a or reg_b contain a zero
    always_comb begin
        if((reg_a == 0) || (reg_b == 0))
            zeros = 1;
        else
            zeros = 0;
    end
endmodule

//-------------------------------------------------------------------
// Finite state machine controller - Moore type
//-------------------------------------------------------------------
module GCD_controller (
    input clk,    // Clock
    input reset_n,
    input a_less_b,
    input zeros,
    input start,
    output logic swap,
    output logic load,
    output logic done
    );

    // declare internal connections
    // state machine states
    enum logic [2:0]{
        IDLE =  3'b000,
        TEST =  3'b001,
        SWAP =  3'b010,
        SUB  =  3'b011,
        DONE =  3'b111
    } gcd_sm_ns, gcd_sm_ps;

    // Multiplier state machine
    always_ff @(posedge clk, negedge reset_n)
        if (~reset_n)      gcd_sm_ps <= IDLE; //reset takes priority
        else            gcd_sm_ps <= gcd_sm_ns;
        // Moore State machine combo logic
        always_comb begin
            unique case (gcd_sm_ps)
                IDLE: begin
                    if (start)
                        gcd_sm_ns = TEST;
                    else
                        gcd_sm_ns = IDLE;
                    end
                TEST: begin
                    if (a_less_b && !zeros) gcd_sm_ns = SWAP;
                    else if (!a_less_b && !zeros) gcd_sm_ns = SUB;
                    else gcd_sm_ns = DONE;
                    // done if either reg holds 0
                    end
                SWAP:   gcd_sm_ns = SUB;
                SUB:    gcd_sm_ns = TEST;
                DONE:   gcd_sm_ns = IDLE;
                // hold done for 1 cycle then idle
            endcase
    end

    // Assign outputs load, shift, done
    always_comb begin
        swap =  gcd_sm_ps[1] & !gcd_sm_ps[0];
        load = !gcd_sm_ps[2] & gcd_sm_ps[1];
        done =  gcd_sm_ps[2];
    end
endmodule
