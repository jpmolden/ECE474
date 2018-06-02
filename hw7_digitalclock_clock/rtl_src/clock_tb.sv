module clock_tb;
//system verilog testbench for clock

reg             reset_n,             //reset pin
reg             clk_1sec,            //1 sec clock
reg             clk_1ms,             //1 mili sec clock
reg             mil_time,            //mil time pin
reg [6:0]  segment_data,        // output 7 segment data
reg [2:0]  digit_select         // digit select


parameter CYCLE_1000 = 1000;  //1hz cycle
parameter CYCLE_1    = 1;     //1khz clock

//clock generation for the clocks
    initial begin
      clk_1ms <= 0;
      forever #(CYCLE_1/2) clk_1ms = ~clk_1ms;
    end

    initial begin
      clk_1sec <= 0;
      forever #(CYCLE_1000/2) clk_1sec = ~clk_1sec;
    end

//
    initial begin
      mil_time= 1'b1;
      reset_n <= 0;
      #((CYCLE_1 * 1.5) + 5) reset_n = 1'b1; //reset toggle
    end

//setup output file generation
    initial begin
      output_file = $fopen("vectors/output_data", "wb");
      if (output_file==0) $display("ERROR : Cannot open file output_data");
    end

clock clock_0(.*); //instantiate clock module


// run the clock
task run_n_seconds(input [19:0] days, hours, mins, seconds);
    $display ("running for: %d days, %d hours, %d mins, %d seconds", days, hours, minutes, seconds);
    begin
        #(CYCLE_1000 * days  * 20'd86400);
        #(CYCLE_1000 * hours * 20'd3600);
        #(CYCLE_1000 * mins  * 20'd60);
        #(CYCLE_1000 * seconds);
    end
endtask

task read_time();
    begin
        $fwrite(output_file,"segment_data: %b  digit: %d \n",segment_data, digit_select);
    end

endtask

initial begin
    #(CYCLE_1000 * 1.5);  //wait till reset goes away
    @(negedge clk_50);  //allows 2ns data setup to tas
    #((CYCLE_1/2)-2)   //make minus 10 for 10ns setup time

    run_n_seconds(20'd0,20'd0,20'd0,20'd1);    //simple test patterninitial begin
    read_time();

end // initial

endmodule // clock_tb

    // parameter digit0 = ;
    // parameter digit1 = ;
    // parameter digit2 = ;
    // parameter digit3 = ;
    // parameter digit4 = ;
    // parameter digit5 = ;
    // parameter digit6 = ;
    // parameter digit7 = ;
    // parameter digit9 = ;



    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;
    // parameter segment_data = ;

    //     0:      Final = 7'b000_0001;
    //     1:      Final = 7'b100_1111;
    //     2:      Final = 7'b001_0010;
    //     3:      Final = 7'b000_0110;
    //     4:      Final = 7'b100_1100;
    //     5:      Final = 7'b010_0100;
    //     6:      Final = 7'b010_0000;
    //     7:      Final = 7'b000_1111;
    //     8:      Final = 7'b000_0000;
    //     9:      Final = 7'b000_1100;
