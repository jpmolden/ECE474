add wave  \
sim:/mult/a_in \
sim:/mult/b_in \
sim:/mult/product \
sim:/mult/reset \
sim:/mult/clk \
sim:/mult/start \
sim:/mult/done
add list -nodelta
configure list -strobestart {1 ns} -strobeperiod {100 ns}
configure list -usestrobe 1
add list \
sim:/mult/a_in \
sim:/mult/b_in \
sim:/mult/product \
sim:/mult/reset \
sim:/mult/clk \
sim:/mult/start \
sim:/mult/done

force -freeze sim:/mult/clk 1 0, 0 {50 ns} -r 100ns
run 50
force a_in 10#14
force b_in 10#9
run 50
force reset 1
force start 0
run 100
run 50
force reset 0
run 100
run 50
force start 1
run 100
force start 0
run 500
run 8000

write list mult.list

quit
