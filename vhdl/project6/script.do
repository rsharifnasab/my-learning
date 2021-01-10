-- quit last simualation
quit -sim

cd c:/Users/rshar/Desktop/vhdl-folder

-- compile
vcom -reportprogress 300 -check_synthesis -work work C:/Users/rshar/Desktop/vhdl-folder/work/project6/uart.vhd
vcom -reportprogress 300                  -work work C:/Users/rshar/Desktop/vhdl-folder/work/project6/uart_tb.vhd


-- simulate
vsim work.uart_tb(test)


-- add waves
add wave -position insertpoint sim:/uart_tb/clk_t
add wave -position insertpoint sim:/uart_tb/nrst_t
add wave -position insertpoint sim:/uart_tb/baud_t

add wave -position insertpoint sim:/uart_tb/start_t
add wave -position insertpoint sim:/uart_tb/data_in_t
add wave -position insertpoint sim:/uart_tb/tx_t
add wave -position insertpoint sim:/uart_tb/UUT/pts_current


add wave -position insertpoint sim:/uart_tb/rx_t
add wave -position insertpoint sim:/uart_tb/data_out_t

add wave -position insertpoint sim:/uart_tb/data_ready_t
add wave -position insertpoint sim:/uart_tb/UUT/stp_current

add wave -position insertpoint sim:/uart_tb/UUT/stp_current_c
add wave -position insertpoint sim:/uart_tb/UUT/stp_current_bc
            
-- configure ui
configure wave -namecolwidth 175
configure wave -valuecolwidth 230
configure wave -rowmargin 4
configure wave -childrowmargin 2

--- UI zoom
configure wave -timelineunits ns
WaveRestoreZoom {0 ns} {55 ns}


-- run
run 800ns

WaveRestoreZoom {0 ns} {70 ns}

