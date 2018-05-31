force -freeze sim:/gcd/clk 1 0, 0 {50 ns} -r 100
add wave -position insertpoint  \
sim:/gcd/a_in \
sim:/gcd/b_in \
sim:/gcd/start \
sim:/gcd/reset_n \
sim:/gcd/clk \
sim:/gcd/result \
sim:/gcd/done \
sim:/gcd/reg_a \
sim:/gcd/reg_b \
sim:/gcd/swap \
sim:/gcd/load \
sim:/gcd/a_less_b \
sim:/gcd/zeros \
sim:/gcd/reg_result \
sim:/gcd/a \
sim:/gcd/b \
sim:/gcd/mux1_out \
sim:/gcd/mux2_out


add wave -position insertpoint  \
sim:/gcd/GCD_controller_1/clk \
sim:/gcd/GCD_controller_1/reset_n \
sim:/gcd/GCD_controller_1/a_less_b \
sim:/gcd/GCD_controller_1/zeros \
sim:/gcd/GCD_controller_1/start \
sim:/gcd/GCD_controller_1/swap \
sim:/gcd/GCD_controller_1/load \
sim:/gcd/GCD_controller_1/done \
sim:/gcd/GCD_controller_1/cycle_cnt \
sim:/gcd/GCD_controller_1/gcd_sm_ns \
sim:/gcd/GCD_controller_1/gcd_sm_ps


force a_in 19
force b_in FA
force reset_n 0
run 150
force reset_n 1
run 150
force start 1
run 100
force start 0
run 150
run 150
run 150
