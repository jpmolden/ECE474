add wave -r sim:/mult/*
force -freeze sim:/mult/clk 1 0, 0 {50 ns} -r 100
