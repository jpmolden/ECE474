restart -f
add wave -position insertpoint  \
sim:/testing/clk_50 \
sim:/testing/clk_2 \
sim:/testing/reset_n \
sim:/testing/serial_data \
sim:/testing/data_ena \
sim:/testing/ram_wr_n \
sim:/testing/ram_data \
sim:/testing/ram_addr \
sim:/testing/data \
sim:/testing/shift_done \
sim:/testing/running_total \
sim:/testing/is_header_byte \
sim:/testing/fifo_wr_rdy \
sim:/testing/is_temperature_packet \
sim:/testing/fifo_wr \
sim:/testing/fifo_empty \
sim:/testing/fifo_full \
sim:/testing/fifo_rd

force -freeze sim:/testing/clk_50 1 0, 0 {50 ns} -r 100
force -freeze sim:/testing/clk_2 1 0, 0 {125 ns} -r 250



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
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
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
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
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
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
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
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
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

run 500



quit

add wave -position insertpoint  \
sim:/testing/clk_50 \
sim:/testing/data_ena \
sim:/testing/reset_n \
sim:/testing/serial_data \
sim:/testing/data \
sim:/testing/shift_done \
sim:/testing/shift_cnt
force -freeze sim:/testing/clk_50 1 0, 0 {50 ns} -r 100
force reset_n 0
force data_ena 0
run 100

force reset_n 1
force data_ena 0
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
force serial_data 0
run 100
force serial_data 1
run 100
force serial_data 0
run 100
force serial_data 1
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
