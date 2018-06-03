quit

force -freeze sim:/clock/clk_1sec 1 0, 0 {100 ms} -r 200
force -freeze sim:/clock/clk_1ms 1 0, 0 {10 ms} -r 20
force reset_n 0
force mil_time 1
run 1000
force reset_n 1
run 1000
run 1000
run 5000
run 1000
run 100000
force mil_time 0
run 1000
run 100000
run 100000
run 100000
run 100000

run 100000

run 100000
