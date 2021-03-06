#!/bin/bash
#script "runtb"
veriog_file_dir=/nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog
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
    echo "USAGE: doit <module name> e.g doit mult"
    echo ""
    exit
fi

#  done
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
    vlog ./rtl_src/*
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
    echo "INFO: ./scripts/$1.do exists, .doing"
    echo ""
    vsim $1 -do ./scripts/$1.do -quiet -c -t 1ns
else
    echo ""
    echo "INFO: ./scripts/$1.do not found, exiting"
    echo ""
    exit
fi

 # .if (the script syn_mult exists) then
 #  .{synthesize mult by executing the script}
# if [ -f syn_$1 ]; then
#     echo ""
#     echo "INFO: running synthesize script"
#     echo ""
#     dc_shell-xg-t -f syn_$1
#     # design_vision-xg
# else
#     echo ""
#     echo "INFO: synthesize script not found, exiting"
#     echo ""
#     exit
# fi

# # if (the gate library has not been compiled yet) then
# #   {synthesize the cell library into /work }
# # Hint: to check for prior compilation, look in work/_info, grep cell name
# grep -q XOR3X2.v work/_info
# if [ $? -eq 0 ]; then
#     echo "INFO: gate library already compiled"
# else
#     echo ""
#     echo "INFO: compiling verilog source files in dir: $veriog_file_dir"
#     echo ""
#     vlog -quiet  $veriog_file_dir/*  -work work
# fi

# # if (mult.gate.v exists) then
# #   {compile it}
# if [ -f $1.gate.v ]; then
#     #statements
#     vlog $1.gate.v | tee compile_log
# else
#     echo ""
#     echo "INFO $1.gate.v not found, exiting"
#     echo ""
#     exit
# fi

# # Run a simulation on the gate.v
# vsim $1 -do $1.do -quiet -c +nowarnTFMPC +nowarnTSCALE -t 1ns
