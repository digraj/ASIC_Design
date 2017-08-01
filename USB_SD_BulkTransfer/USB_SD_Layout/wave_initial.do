onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_initial_stuff/tb_clk
add wave -noupdate /tb_initial_stuff/tb_n_rst
add wave -noupdate /tb_initial_stuff/tb_d_plus
add wave -noupdate /tb_initial_stuff/tb_d_minus
add wave -noupdate /tb_initial_stuff/tb_cnt_up
add wave -noupdate /tb_initial_stuff/tb_d_orig
add wave -noupdate /tb_initial_stuff/tb_eop
add wave -noupdate /tb_initial_stuff/tb_data
add wave -noupdate /tb_initial_stuff/DUT/cnt_up
add wave -noupdate /tb_initial_stuff/DUT/byte_rcvd
add wave -noupdate -divider {Edge Detect}
add wave -noupdate /tb_initial_stuff/DUT/EDGE/falling_edge
add wave -noupdate -divider STP
add wave -noupdate /tb_initial_stuff/DUT/STP/shift_enable
add wave -noupdate /tb_initial_stuff/DUT/STP/serial_in
add wave -noupdate /tb_initial_stuff/DUT/STP/parallel_out
add wave -noupdate -divider Decoder
add wave -noupdate /tb_initial_stuff/DUT/BIT_DE/IN1/count_enable
add wave -noupdate /tb_initial_stuff/DUT/BIT_DE/IN1/count_out
add wave -noupdate /tb_initial_stuff/DUT/BIT_DE/IN1/rollover_flag
add wave -noupdate -divider Timer
add wave -noupdate /tb_initial_stuff/DUT/CNT/count_out_bit
add wave -noupdate /tb_initial_stuff/DUT/CNT/bit_rcvd
add wave -noupdate /tb_initial_stuff/DUT/CNT/count_out_byte
add wave -noupdate /tb_initial_stuff/DUT/CNT/byte_rcvd
add wave -noupdate -divider Destuffer
add wave -noupdate /tb_initial_stuff/DUT/BIT_DE/count_out
add wave -noupdate /tb_initial_stuff/DUT/pause
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {136577 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {315 ns}
