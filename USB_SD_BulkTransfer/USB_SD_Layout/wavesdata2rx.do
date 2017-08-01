onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_data_2_rx/tb_clk
add wave -noupdate /tb_data_2_rx/tb_n_rst
add wave -noupdate /tb_data_2_rx/tb_cnt_up
add wave -noupdate /tb_data_2_rx/tb_serial_in
add wave -noupdate /tb_data_2_rx/tb_clear
add wave -noupdate /tb_data_2_rx/tb_parallel_out
add wave -noupdate /tb_data_2_rx/tb_byte_rcv
add wave -noupdate /tb_data_2_rx/DUT/CNT/byte_rcvd
add wave -noupdate /tb_data_2_rx/DUT/CNT/count_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {33762 ps} 0}
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
WaveRestoreZoom {0 ps} {210 ns}
