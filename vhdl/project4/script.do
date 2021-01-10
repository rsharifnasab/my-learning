-- quit last simualation
quit -sim

cd c:/Users/rshar/Desktop/vhdl-folder

-- compile
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/project4/barrel_shifter.vhd
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/project4/barrel_shifter_tb.vhd


-- simulate
-- vsim work.multiplier(behavioral)
vsim work.barrel_shifter_tb(test)


-- add waves
add wave -position insertpoint sim:/barrel_shifter_tb/nRst
add wave -position insertpoint sim:/barrel_shifter_tb/CLk
add wave -position insertpoint sim:/barrel_shifter_tb/Sham
add wave -position insertpoint sim:/barrel_shifter_tb/Shty
add wave -position insertpoint sim:/barrel_shifter_tb/dir
add wave -position insertpoint sim:/barrel_shifter_tb/din
add wave -position insertpoint sim:/barrel_shifter_tb/Sin

add wave -position insertpoint sim:/barrel_shifter_tb/dout
add wave -position insertpoint sim:/barrel_shifter_tb/Sout


add wave -position insertpoint sim:/barrel_shifter_tb/uut/temp


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

