add wave -position insertpoint  \
sim:/fifo/wr_clk \
sim:/fifo/rd_clk \
sim:/fifo/reset_n \
sim:/fifo/wr \
sim:/fifo/rd \
sim:/fifo/data_in \
sim:/fifo/data_out \
sim:/fifo/empty \
sim:/fifo/full

add list -nodelta
configure list -strobestart {1 ns} -strobeperiod {100 ns}
configure list -usestrobe 1
add list \
sim:/fifo/wr_clk \
sim:/fifo/rd_clk \
sim:/fifo/reset_n \
sim:/fifo/wr \
sim:/fifo/rd \
sim:/fifo/data_in \
sim:/fifo/data_out \
sim:/fifo/empty \
sim:/fifo/full

force -freeze sim:/fifo/wr_clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/fifo/rd_clk 1 50, 0 {150 ns} -r 200
force reset_n 0
force reset_n 1
force reset_n 0
run 100
force reset_n 1
run 100
run 1000

write list fifo.list

quit

