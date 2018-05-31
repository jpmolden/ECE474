force -freeze sim:/tas/clk_50 1 0, 0 {50 ns} -r 100
force -freeze sim:/tas/clk_2 1 0, 0 {100 ns} -r 200


force data_ena 0
force reset_n 0
force data_ena 0
run 100

force reset_n 1
force data_ena 0
run 100

force data_ena 1
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force data_ena 0
force serial_data x
run 100


force data_ena 1
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force data_ena 0
force serial_data x
run 100

force data_ena 1
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force data_ena 0
force serial_data x
run 100

force data_ena 1
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force data_ena 0
force serial_data x
run 100

force data_ena 1
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
run 100
force data_ena 0
force serial_data x
run 100
