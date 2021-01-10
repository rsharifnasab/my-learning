-- quit last simualation
quit -sim

cd c:/Users/rshar/Desktop/vhdl-folder

-- compile
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/project2/alu.vhd
vcom -reportprogress 300 -work work C:/Users/rshar/Desktop/vhdl-folder/work/project2/alu_tb.vhd


-- simulate
-- vsim work.ALU_32bit(behavioral)
vsim work.alu_tb(test)


-- add waves

add wave -position insertpoint sim:/alu_tb/sin
add wave -position insertpoint sim:/alu_tb/cin

add wave -position insertpoint sim:/alu_tb/func

add wave -position insertpoint sim:/alu_tb/A
add wave -position insertpoint sim:/alu_tb/B

add wave -position insertpoint sim:/alu_tb/sout
add wave -position insertpoint sim:/alu_tb/cout


add wave -position insertpoint sim:/alu_tb/Z


-- configure ui
configure wave -namecolwidth 100
configure wave -valuecolwidth 100
configure wave -rowmargin 4
configure wave -childrowmargin 2

--- UI zoom
configure wave -timelineunits ns
WaveRestoreZoom {0 ns} {105 ns}


-- run
run 150ns

WaveRestoreZoom {0 ns} {70 ns}

