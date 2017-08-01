onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_usb_transmitter/tb_clk
add wave -noupdate /tb_usb_transmitter/tb_n_rst
add wave -noupdate /tb_usb_transmitter/tb_send_data
add wave -noupdate /tb_usb_transmitter/tb_tx_ena
add wave -noupdate /tb_usb_transmitter/tb_tx_nack
add wave -noupdate /tb_usb_transmitter/tb_write_done
add wave -noupdate /tb_usb_transmitter/tb_tx_ack
add wave -noupdate /tb_usb_transmitter/tb_d_plus
add wave -noupdate /tb_usb_transmitter/tb_d_minus
add wave -noupdate /tb_usb_transmitter/DUT/CONTROLLER/curr_state
add wave -noupdate -divider TCU
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/send_data
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/tx_ena
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/buff_empty
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/tx_nack
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/write_done
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/tx_ack
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/cnt_done
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/eop
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/fifo_en
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/start_read
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/trans
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/sd_tx_en_write
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_ena
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_sync
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_data_pid
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_data_1_crc
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_data_2_crc
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_ack
add wave -noupdate -group TCU /tb_usb_transmitter/DUT/CONTROLLER/load_nack
add wave -noupdate -divider PTS
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/shift_enable
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_enable
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_sync
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_data_pid
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_data_1_crc
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_data_2_crc
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_ack
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/load_nack
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/parallel_in
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/serial_out
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/mid_state
add wave -noupdate -expand -group PTS /tb_usb_transmitter/DUT/FLEX_PTS/curr_state
add wave -noupdate -divider STUFFER
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/d_orig
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/flag_8
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/pause
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/temp_pause
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/num_ones
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/found_6
add wave -noupdate -group STUFFER /tb_usb_transmitter/DUT/STUFF/temp_out
add wave -noupdate -divider TIMER
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/pause
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/count_up
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/shift_en
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/byte_rcvd
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/flag_8
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/clear_64
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/count_up_8
add wave -noupdate -group TIMER /tb_usb_transmitter/DUT/TIMER/count_up_64
add wave -noupdate -divider ENCODER
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/pause
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/d_orig
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/flag_8
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/eop
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/d_plus
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/d_minus
add wave -noupdate -expand -group ENCODER /tb_usb_transmitter/DUT/ENCODE/prev_d
add wave -noupdate -divider FIFO
add wave -noupdate -expand -group FIFO /tb_usb_transmitter/DUT/FIFO/read_enable
add wave -noupdate -expand -group FIFO /tb_usb_transmitter/DUT/FIFO/write_enable
add wave -noupdate -expand -group FIFO /tb_usb_transmitter/DUT/FIFO/write_data
add wave -noupdate -expand -group FIFO /tb_usb_transmitter/DUT/FIFO/read_data
add wave -noupdate -expand -group FIFO /tb_usb_transmitter/DUT/FIFO/fifo_empty
add wave -noupdate -expand -group FIFO /tb_usb_transmitter/DUT/FIFO/fifo_full
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6602910 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 113
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
WaveRestoreZoom {0 ps} {13650 ns}
