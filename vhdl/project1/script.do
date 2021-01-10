-- quit last simualation
quit -sim

-- compile
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/shift_register.vhd

-- simulate
vsim work.reg(behavioral)


-- add waves
add wave -position insertpoint  \
sim:/reg/clk
add wave -position insertpoint  \
sim:/reg/mode
add wave -position insertpoint  \
sim:/reg/din
add wave -position insertpoint  \
sim:/reg/dout
add wave -position insertpoint  \
sim:/reg/temp
add wave -position insertpoint  \
sim:/reg/nrst


-- configure ui
configure wave -namecolwidth 100
configure wave -valuecolwidth 100
configure wave -rowmargin 4
configure wave -childrowmargin 2
--- UI zoom
configure wave -timelineunits ns
WaveRestoreZoom {0 ns} {105 ns}

-- test bench
--- clock
force -freeze sim:/reg/clk 1 0, 0 {2.5 ns} -r 5ns
--- reset
force sim:/reg/nrst 0 0ns, 1 7ns
-- tests
---- load
force sim:/reg/mode 0 0ns
force sim:/reg/din b"10100110" 0ns

-- up counter
force sim:/reg/mode 6 13ns

-- down counter
force sim:/reg/mode 7 27ns

-- circular right shift
force sim:/reg/mode 4 52ns

-- circular left shift
force sim:/reg/mode 5 71ns

-- logical shift left
force sim:/reg/mode 2 84ns

-- logical shift left
force sim:/reg/mode 1 99ns

-- load again
force sim:/reg/mode 0 123ns
force sim:/reg/din b"10100110" 124ns

-- artih shift right
force sim:/reg/mode 3 126ns


-- run
run 150ns
