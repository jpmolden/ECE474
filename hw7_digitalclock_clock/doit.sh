#!/bin/bash
#script "doit"
veriog_file_dir=/nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog
modulename=clock

#requires  one argument which is the module name of interest eg mult adder ect.
#check for single arguement given
# "$#" is the number of arguments give
# Clear old files
    echo ""
    echo "INFO: clearing old files"
    echo ""
        clear
        rm -r work
        rm $1.list
        rm $1.rtl.list
        rm $1.gate.list
        rm transcript
        rm compile_log
        rm vsim.wlf
        rm default.svf
        rm $1.gate.v
        rm command.log
        rm diff_report.txt
    echo ""
    echo "INFO: old files removed"
    echo ""

# check if args given
    if [ $# -eq 0 ]; then
        echo ""
        echo "INFO: no modeule argument given"
        echo "USAGE: doit <module name> e.g ./doit $modulename or ./doit $modulename&_tb"
        echo ""
        exit
    fi


# create the work directory is its not there
    if [ ! -d "work" ]; then
        echo ""
        echo "INFO: Creating work dir"
        echo ""
        vlib work
    fi

# compile the rtl from the sysverilog file
    if [ -f "./rtl_src/$1.sv" ] ; then
        echo ""
        echo "INFO: $1.sv Exists compiling"
        echo ""
        vlog ./rtl_src/*.sv
    else
        echo ""
        echo "INFO: $1.sv does not exist, exiting"
        exit
    fi

# if (mult.do exists) then
#   {invoke the simulator, run the simulation, and quit}
#    Note1: upon invocation of vsim, use the "-t 1ps" switch to keep
#           timebases consistent.  It defaults to nS.
#    Note2: You will probably get at message: "# Missing signal name or pattern"
#           This can be safely ignored.
    if [ -f "./scripts/$1.do" ]; then
        echo ""
        echo "INFO: $1.do exists, .doing"
        echo ""
        vsim $1 -do ./scripts/$1.do -quiet -novopt -c -t 1us
        # create a list file for comparison to the gate level lis
        # mv $1.list $1.rtl.list
        # Delete the vsim rtl list file
        mv $1.list rtl.$1.list
        rm $1.list

    else
        echo ""
        echo "INFO: $1.do not found, exiting"
        echo ""
        exit
    fi


    echo "WARNING: This may take a some time if running the testbench"
    echo " "
    echo "Proceed with gate level sim and diff? y/n"


read response
if [ $response == "y" ]; then
    echo "INFO: running gate simulation"
    rm -r work
    # if (the script syn_mult exists) then
    #  {synthesize mult by executing the script}
    if [ -f ./scripts/syn_$1 ]; then
        echo ""
        echo "INFO: running syn_$1 synthesize script"
        echo ""

        dc_shell-xg-t -f ./scripts/syn_$1
        # design_vision-xg
    else
        echo ""
        echo "INFO: syn_$1 not found, using default script"

			echo "read_sverilog ./rtl_src/$modulename.sv" > "temp.txt"
			echo "compile" >> "temp.txt"
            echo "link" >> "temp.txt"
			echo "report_timing" >> "temp.txt"
			echo "report_cell" >> "temp.txt"
			echo "report_reference -nosplit -hierarchy">> "temp.txt"
            echo "report_area" >> "temp.txt"
			echo "write -format verilog -hierarchy -output ./rtl_src/$modulename.gate.v" >> "temp.txt"
			echo "quit" >> "temp.txt"
			cp "temp.txt" "./scripts/temp_syn_$1"
			rm "temp.txt"

        dc_shell-xg-t -f ./scripts/temp_syn_$1

        echo ""
        # exit
    fi

    # # if (the gate library has not been compiled yet) then
    #   {synthesize the cell library into /work }
    # Hint: to check for prior compilation, look in work/_info, grep cell name
    grep -q XOR3X2.v work/_info
    if [ $? -eq 0 ]; then
        echo "INFO: gate library already compiled"
    else
        echo ""
        echo "INFO: compiling verilog source files in dir: $veriog_file_dir"
        echo ""
        vlog -quiet  $veriog_file_dir/*  -work work
    fi

    # if (mult.gate.v exists) then
    #   {compile it}
    if [ -f ./rtl_src/$modulename.gate.v ]; then
        #statements
        vlog ./rtl_src/$1.sv
        vlog ./rtl_src/$modulename.gate.v | tee compile_log
    else
        echo ""
        echo "INFO $modulename.gate.v not found, exiting"
        echo ""
        exit
    fi

    mv output_data rtl.output_data
    rm output_data



    #statements
    # Run a simulation on the gate.v
        vsim $1 -do ./scripts/$1.do -quiet -c +nowarnTFMPC +nowarnTSCALE -novopt -t 1us
        mv output_data gate.output_data
        rm output_data

        mv $1.list gate.$1.list
        rm $1.list

    # mv $1.list $1.gate.list
    # rm $1.list

    # Produce a diff report or message
    # Testbench only diff report
    if [ -f gate.output_data ]; then
    diff gate.output_data rtl.output_data >| diff_report.txt
        if [ $? -eq 0 ]; then
            echo ""
            echo "INFO: diff completed no diffs betweem RTL and GATE lists - SUCCESS"
            echo "SUCCESS"
            echo ""
        else
            echo "INFO: diffs betweem RTL and GATE synthesis "
            diff gate.output_data rtl.output_data >| diff_report.txt
        fi
    fi

    # DO file diff report
    if [ -f gate.$1.list ]; then
        diff gate.$1.list gate.$1.list >| do_diff_report.txt
        if [ $? -eq 0 ]; then
            echo ""
            echo "INFO: diff completed no diffs betweem RTL and GATE lists - SUCCESS"
            echo "SUCCESS"
            echo ""
        else
            echo "INFO: diffs betweem RTL and GATE synthesis "
            diff gate.$1.list gate.$1.list >| do_diff_report.txt
        fi
    fi
fi
