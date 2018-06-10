force -freeze sim:/clock/clk_1sec 1 0, 0 {500000 us} -r 1000000
add wave -radix decimal /clock/timer_seconds/time_seconds
add wave -radix decimal /clock/timer_minutes/time_minutes
add wave -radix decimal /clock/timer_hours/time_hrs

add list -decimal -width 15 /clock/timer_hours/time_hrs
add list -decimal -width 15 /clock/timer_minutes/time_minutes
add list -decimal -width 15 /clock/timer_seconds/time_seconds


force reset_n 0
run 1000000
force reset_n 1
run 1000000
run 1000000
run 1000000
run 1000000
run 10000000000
write list clock.list

quit





