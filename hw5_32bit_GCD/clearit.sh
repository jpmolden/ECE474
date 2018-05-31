#!/bin/bash
#script "clearit"
if [ $# -eq 0 ]; then
    echo ""
    echo "INFO: no modeule argument given"
    echo "USAGE: doit <module name> e.g clearit mult"
    echo ""
    exit
fi
#
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
