-- quit last simualation
quit -sim

cd c:/Users/rshar/Desktop/vhdl-folder

-- compile
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/project3/multiplier.vhd
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/project3/multiplier_tb.vhd


-- simulate
-- vsim work.multiplier(behavioral)
vsim work.multiplier_tb(test)


-- add waves

add wave -position insertpoint sim:/multiplier_tb/A
add wave -position insertpoint sim:/multiplier_tb/B
add wave -position insertpoint sim:/multiplier_tb/Z2


-- configure ui
configure wave -namecolwidth 100
configure wave -valuecolwidth 100
configure wave -rowmargin 4
configure wave -childrowmargin 2

--- UI zoom
configure wave -timelineunits ns
WaveRestoreZoom {0 ns} {105 ns}


-- run
run 200ns

WaveRestoreZoom {0 ns} {70 ns}

