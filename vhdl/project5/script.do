-- quit last simualation
quit -sim

cd c:/Users/ali/Desktop/vhdl-folder

-- compile
vcom -reportprogress 300 -work work C:/Users/ali/Desktop/vhdl-folder/work/project5/elev_control.vhd
vcom -reportprogress 300 -work work C:/Users/ali/Desktop/vhdl-folder/work/project5/elev_control_tb.vhd


-- simulate
-- vsim work.multiplier(behavioral)
vsim work.elev_control_tb(test)


-- add waves
add wave -position insertpoint sim:/elev_control_tb/clk_tb
add wave -position insertpoint sim:/elev_control_tb/nrst_tb
add wave -position insertpoint sim:/elev_control_tb/come_tb
add wave -position insertpoint sim:/elev_control_tb/switch_tb
add wave -position insertpoint sim:/elev_control_tb/go_tb

add wave -position insertpoint sim:/elev_control_tb/motor_up_tb
add wave -position insertpoint sim:/elev_control_tb/motor_down_tb
add wave -position insertpoint sim:/elev_control_tb/current_floor_tb
add wave -position insertpoint sim:/elev_control_tb/move_state_tb

add wave -position insertpoint sim:/elev_control_tb/uut/next_state
add wave -position insertpoint sim:/elev_control_tb/uut/current_state
            
            
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

