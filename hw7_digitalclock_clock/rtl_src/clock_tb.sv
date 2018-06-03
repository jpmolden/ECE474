module clock_tb;

//system verilog testbench for clock
clock clock_0(.*); //instantiate clock module
reg         reset_n;            //reset pin
reg         clk_1sec;            //1 sec clock
reg         clk_1ms;            //1 mili sec clock
reg         mil_time;            //mil time pin
reg [6:0]   segment_data;        // output 7 segment data
reg [2:0]   digit_select;        // digit select
integer     i;
integer     output_file;
string      decoded_seg;

parameter CYCLE_1000 = 1000;  //cycle
parameter CYCLE_1    = 10;     //clock
          // 1ms clock speeded up for faster simulation

//clock generation for the clocks
    initial begin
      clk_1ms <= 0;
      forever #(CYCLE_1/2) clk_1ms = ~clk_1ms;
    end

    initial begin
      clk_1sec <= 0;
      forever #(CYCLE_1000/2) clk_1sec = ~clk_1sec;
    end

//setup output file generation
    initial begin
      output_file = $fopen("output_data", "wb");
      if (output_file==0) $display("ERROR : Cannot open file output_data");
    end

// segment decode for output file
always_comb begin
    case (segment_data)
        7'b000_0001:decoded_seg = "0";
        7'b100_1111:decoded_seg = "1";
        7'b001_0010:decoded_seg = "2";
        7'b000_0110:decoded_seg = "3";
        7'b100_1100:decoded_seg = "4";
        7'b010_0100:decoded_seg = "5";
        7'b010_0000:decoded_seg = "6";
        7'b000_1111:decoded_seg = "7";
        7'b000_0000:decoded_seg = "8";
        7'b000_1100:decoded_seg = "9";
        7'b111_1111:decoded_seg = "   AM ";
        7'b111_1011:decoded_seg = "   PM ";
        7'b111_1100:decoded_seg = ":  AM ";
        7'b111_1000:decoded_seg = ":  PM ";
        default : decoded_seg = "ER";
    endcase
end

// run the clock
task run_dhms(input [40:0] days, hours, mins, seconds);
    $display ("INFO: running for: %d days, %d hours, %d mins, %d seconds", days, hours, mins, seconds);
    //$fwrite(output_file,"segment_data: %b  digit: %d \n",segment_data, digit_select);
    begin
        // run for a set time
        #(CYCLE_1000 * seconds);
        #(CYCLE_1000 * 60 * mins);
        #(CYCLE_1000 * 3600 * hours);
        #(CYCLE_1000 * 24 * 3600 * days);

        // sync up the file write to the 1ms clock
        do
            begin
                #(CYCLE_1);
            end
        while (digit_select != 4);

        // write to file and display output
        $fwrite(output_file,"INPUT: %d days, %d hours, %d mins, %d seconds\n", days, hours, mins, seconds);
        $fwrite(output_file,"   segment %d = %b decode: %s\n", digit_select, segment_data, decoded_seg);
        $display("  digit_%d = %b decode: %s", digit_select, segment_data, decoded_seg);
        #(CYCLE_1);
        $fwrite(output_file,"   segment %d = %b decode: %s\n", digit_select, segment_data, decoded_seg);
        $display("  digit_%d = %b decode: %s", digit_select, segment_data, decoded_seg);
        #(CYCLE_1);
        $fwrite(output_file,"   segment %d = %b decode: %s\n", digit_select, segment_data, decoded_seg);
        $display("  digit_%d = %b decode: %s", digit_select, segment_data, decoded_seg);
        #(CYCLE_1);
        $fwrite(output_file,"   segment %d = %b decode: %s\n", digit_select, segment_data, decoded_seg);
        $display("  digit_%d = %b decode: %s", digit_select, segment_data, decoded_seg);
        #(CYCLE_1);
        $fwrite(output_file,"   segment %d = %b decode: %s\n", digit_select, segment_data, decoded_seg);
        $display("  digit_%d = %b decode: %s", digit_select, segment_data, decoded_seg);
        #(CYCLE_1);
        $fwrite(output_file,"\n");
        #(CYCLE_1);
    end
endtask : run_dhms


// reset
task res_clock;
    begin
        reset_n <= 0;
        #(CYCLE_1*2);
        reset_n <= 1'b1; // release reset
    end
endtask : res_clock


// main test scenarios
initial
    begin

    mil_time <='0;
    $display ("INFO: Running Testbench runtime approx 1min realtime");
    $display ("INFO:            *** STANDARD CLOCK *** ");
    $fwrite(output_file,"*** STANDARD TIME *** \n\n");
    res_clock();
    run_dhms(0,0,0,1);    // run for time and write file
    res_clock();
    run_dhms(0,0,0,2);    // run for time and write file
    res_clock();
    run_dhms(0,11,59,59);    // run for time and write file
    res_clock();
    run_dhms(0,12,0,0);    // run for time and write file
    res_clock();
    run_dhms(0,13,30,0);    // run for time and write file
    res_clock();
    run_dhms(0,23,59,59);    // run for time and write file
    res_clock();
    run_dhms(1,0,0,0);    // run for time and write file
    res_clock();

    $fwrite(output_file,"\n\n *** MIL TIME ***\n\n");
    $display ("INFO:            *** MIL CLOCK *** ");
    mil_time <='1;
    res_clock();
    run_dhms(0,0,0,1);    // run for time and write file
    res_clock();
    run_dhms(0,0,0,2);    // run for time and write file
    res_clock();
    run_dhms(0,11,59,59);    // run for time and write file
    res_clock();
    run_dhms(0,12,0,0);    // run for time and write file
    res_clock();
    run_dhms(0,13,30,0);    // run for time and write file
    res_clock();
    run_dhms(0,23,59,59);    // run for time and write file
    res_clock();
    run_dhms(1,0,0,0);    // run for time and write file
    res_clock();

    // #(CYCLE_1000);
    $finish;
end // initial
endmodule // clock_tb
