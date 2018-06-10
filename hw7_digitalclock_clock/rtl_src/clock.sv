//-------------------------------------------------------------------
// Top-level module - Clock
//-------------------------------------------------------------------
module clock(
    input             reset_n,             //reset pin
    input             clk_1sec,            //1 sec clock
    input             clk_1ms,             //1 mili sec clock
    input             mil_time,            //mil time pin
    output reg [6:0]  segment_data,        // output 7 segment data
    output reg [2:0]  digit_select         // digit select
    );

		 logic [6:0]  time_seconds; // current time in seconds 12/24
	     logic        even_second; // used to blink colon
	     logic 		  min_tick;	// enable the minute counter
	timer_seconds timer_seconds(.*);

		 logic [6:0]  time_minutes; // current time in seconds, 12/24
	     logic 		  hr_tick; 	// enable the hour counter
	timer_minutes timer_minutes(.*);

		 logic [6:0]  time_hrs; // 24 hr format
	     logic 		  am_pm; 	// toggle am/pm
	timer_hours   timer_hours(.*);

		 logic [6:0]  time_hrs_f; // 12/24 formatted hours
	convert_24		convert_24(.*);

	digit_select_sm digit_select_sm(.*);

		 logic [6:0]	digit_0;
		 logic [6:0]	digit_1;
		 logic [6:0]	digit_2; // colon
		 logic [6:0]	digit_3;
		 logic [6:0]	digit_4;
	digit_parse		digit_parse(.*);
	segment_mux		segment_mux(.*);

        logic [6:0] segment_decimal;
    segment_code    segment_code(.*);

endmodule // clock


//-------------------------------------------------------------------
// timer_seconds - second counter, am_pm indicator and blink
//-------------------------------------------------------------------
module timer_seconds (
    input               reset_n,   // reset pin
    input               clk_1sec,  // 1 sec clock
    output logic [6:0]  time_seconds, // current time in seconds, 12/24
    output logic        even_second, // used to blink colon
    output logic 		min_tick 	// enable the minute counter
    );

    // seconds counter
    always_ff @(posedge clk_1sec, negedge reset_n) begin
        if(~reset_n)
            time_seconds <= '0;
        else if (time_seconds == 7'd59)
            time_seconds <= '0;
        else
            time_seconds <= time_seconds + 1;
    end

    // assign outputs
    assign min_tick = time_seconds == 7'd59;
    assign even_second = time_seconds[0] == 1'b0;
endmodule // timer_seconds


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module timer_minutes (
    input               reset_n,   // reset pin
    input               clk_1sec,  // 1 sec clock
    input				min_tick,  // enable the minute counter
    output logic [6:0]  time_minutes, // current time in seconds, 12/24
    output logic 		hr_tick 	// enable the hour counter
    );

    // minutes counter
    always_ff @(posedge clk_1sec, negedge reset_n) begin
        if(~reset_n)
            time_minutes <= '0;
        else if ((time_minutes == 7'd59) && min_tick)
            time_minutes <= '0;
        else
            time_minutes <= time_minutes + min_tick;
    end // always_ff @(posedge clk_1sec, negedge reset_n)

    // assign outputs
    assign hr_tick = (time_minutes == 7'd59) & min_tick;
endmodule // timer_seconds


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module timer_hours (
    input               reset_n,   // reset pin
    input               clk_1sec,  // 1 sec clock
    input				hr_tick,  // enable the minute counter
    output logic [6:0]  time_hrs, // 24 hr format
    output logic 		am_pm 	// toggle am/pm
    );

    // hours counter
    always_ff @(posedge clk_1sec, negedge reset_n) begin
        if(~reset_n)
            time_hrs <= '0;
        else if ((time_hrs == 7'd23) && hr_tick)
            time_hrs <= '0;
        else
            time_hrs <= time_hrs + hr_tick;
    end // always_ff @(posedge clk_1sec, negedge reset_n)

    // am_pm toggle
    always_ff @(posedge clk_1sec, negedge reset_n) begin
        if(~reset_n)
            am_pm <= '0;
        else if ((time_hrs == 7'd11) || (time_hrs == 7'd23) )
            am_pm <= am_pm + hr_tick;
        else
            am_pm <= am_pm;
    end
endmodule // timer_hours


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module convert_24 (
	input 		 [6:0]	time_hrs, // 24hr time format
	input 				am_pm,  // Asynchronous reset active low
	input  				mil_time,
	output logic [6:0]	time_hrs_f // 12/24 formatted hours
	);

	always_comb begin
		if(mil_time)
			time_hrs_f = time_hrs;
		else if ((time_hrs == 7'd0) || (time_hrs == 7'd12))
			time_hrs_f = 7'd12;
		else if (am_pm)
			time_hrs_f = time_hrs - 7'd12;
        else
            time_hrs_f = time_hrs;
	end
endmodule // convert_24


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module digit_select_sm (
    input             	clk_1ms,             //1 mili sec clock
    input				reset_n,
    output logic [2:0]  digit_select         // digit select
    );

	// 7 segment digit addresses
	// Left to right on segment display
    // enum logic [2:0]{
        parameter D0  	= 3'b000;
        parameter D1   	= 3'b001;
        parameter MIDDLE  = 3'b010;
        parameter D3   	= 3'b011;
        parameter D4   	= 3'b100;
    // }digitsel_sm_ps, digitsel_sm_ns;

    // set the next digit address
    always_ff @(posedge clk_1ms, negedge reset_n) begin
    	if(~reset_n)
    		digit_select <= D4;
    	else if (digit_select == D0)
    		digit_select <= D4;
    	else
    		digit_select <= digit_select - 1;
	end
endmodule // digit_select_sm


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module digit_parse (
	input [6:0]			time_minutes,    //
	input [6:0]			time_hrs_f, // Clock Enable
	input 				even_second,
	input 				am_pm,
	output logic [6:0]	digit_0,
	output logic [6:0]	digit_1,
	output logic [6:0]	digit_2, // colon
	output logic [6:0]	digit_3,
	output logic [6:0]	digit_4
	);

	//Assign outputs
	assign digit_0 = time_minutes % 10;
	assign digit_1 = time_minutes / 10;

	// blink the colon every second and display am_pm indicator
	assign digit_2 = {4'b1111, ~am_pm, ~even_second, ~even_second};

	assign digit_3 = time_hrs_f % 10;
	assign digit_4 = time_hrs_f / 10;
endmodule // digit_parse


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module segment_mux (
	input [2:0] 	digit_select,
	input [6:0]	digit_0,
	input  [6:0]	digit_1,
	input  [6:0]	digit_2, // colon
	input  [6:0]	digit_3,
	input [6:0]	digit_4,
	output logic [6:0] segment_decimal
	);

	// 7 segment digit addresses
    parameter D0     = 3'b000; // First digit
    parameter D1     = 3'b001; // Second digit
    parameter MIDDLE = 3'b010; // Colon and AM/PM indicator
    parameter D3     = 3'b011; // Third digit
    parameter D4     = 3'b100; // Fourth digit

	always_comb begin
		case (digit_select)
			D0:
				segment_decimal = digit_0;
			D1:
				segment_decimal = digit_1;
			MIDDLE:
				segment_decimal = digit_2; //digit_2;
			D3:
				segment_decimal = digit_3;
			D4:
				segment_decimal = digit_4;
			default : segment_decimal = 7'b001_1001;
		endcase
	end
endmodule // segment_mux


//-------------------------------------------------------------------
//
//-------------------------------------------------------------------
module segment_code (
    input           [6:0] segment_decimal,
    output logic    [6:0] segment_data
    );
    always_comb begin
        case (segment_decimal)
                0:      segment_data = 7'b000_0001;
                1:      segment_data = 7'b100_1111;
                2:      segment_data = 7'b001_0010;
                3:      segment_data = 7'b000_0110;
                4:      segment_data = 7'b100_1100;
                5:      segment_data = 7'b010_0100;
                6:      segment_data = 7'b010_0000;
                7:      segment_data = 7'b000_1111;
                8:      segment_data = 7'b000_0000;
                9:      segment_data = 7'b000_1100;
                7'b111_1111:segment_data = 7'b111_1111; // colon
                7'b111_1011:segment_data = 7'b111_1011;
                7'b111_1100:segment_data = 7'b111_1100;
                7'b111_1000:segment_data = 7'b111_1000;
                default : segment_data = 7'b001_1001;
        endcase
    end // always_comb
endmodule // seg_code
