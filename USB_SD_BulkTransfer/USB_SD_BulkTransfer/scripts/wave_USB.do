onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_USB/tb_clk
add wave -noupdate /tb_USB/tb_n_rst
add wave -noupdate /tb_USB/tb_rx_en_host
add wave -noupdate /tb_USB/tb_crc_status
add wave -noupdate /tb_USB/tb_read_done
add wave -noupdate /tb_USB/tb_d_plus
add wave -noupdate /tb_USB/tb_d_minus
add wave -noupdate /tb_USB/tb_sd_rx_en_read
add wave -noupdate -divider {READ FIFO}
add wave -noupdate -expand -group {READ FIFO} /tb_USB/DUT/FIFOREAD/read_enable
add wave -noupdate -expand -group {READ FIFO} /tb_USB/DUT/FIFOREAD/write_enable
add wave -noupdate -expand -group {READ FIFO} /tb_USB/DUT/FIFOREAD/write_data
add wave -noupdate -expand -group {READ FIFO} /tb_USB/DUT/FIFOREAD/read_data
add wave -noupdate -expand -group {READ FIFO} /tb_USB/DUT/FIFOREAD/fifo_empty
add wave -noupdate -expand -group {READ FIFO} /tb_USB/DUT/FIFOREAD/fifo_full
add wave -noupdate -divider {BD CONTROLLER}
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/rcving
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/txing
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/rcvd_exp_hs
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/send_nack_in
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/addr_dne
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/pckt_rcvd
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/rx_en
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/tx_en
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/TX/tx_complete
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/send_data
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/send_ack
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/send_nack_out
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/rx_exp_hs
add wave -noupdate -expand -group {BD CONTROLLER} /tb_USB/DUT/BD/curr_state
add wave -noupdate -divider RX
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/RCU/curr_state
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/d_plus
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/d_minus
add wave -noupdate -expand -group RX /tb_USB/here
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/read_done
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/rx_en
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/hs_rcv
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/crc_status
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/fifo_empty
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/eop
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/rcving
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/send_nack
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/rcvd_exp_hs
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/sd_rx_en_read
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/addr_dne
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/fifo_full
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/dbuff_clr
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/fill_dbuff
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/data
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/pckt_rcvd
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/d_orig
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/bit_rcvd
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/byte_rcvd
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/CNT/count_out_bit
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/CNT/count_out_byte
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/pause
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/clear
add wave -noupdate -expand -group RX /tb_USB/DUT/RX/cnt_up
add wave -noupdate -divider {WRITE FIFO}
add wave -noupdate -expand -group {WRITE FIFO} /tb_USB/DUT/FIFOWRITE/write_enable
add wave -noupdate -expand -group {WRITE FIFO} /tb_USB/DUT/FIFOWRITE/write_data
add wave -noupdate -expand -group {WRITE FIFO} /tb_USB/DUT/FIFOWRITE/fifo_empty
add wave -noupdate -expand -group {WRITE FIFO} /tb_USB/DUT/FIFOWRITE/fifo_full
add wave -noupdate -divider TX
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/CONTROLLER/curr_state
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/send_data
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/d_plus
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/d_minus
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/pause
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/parallel_in
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/ENCODE/d_orig
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/tx_ena
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/bit_out
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/tx_nack
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/write_done
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/tx_ack
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/sd_tx_en_write
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/buff_empty
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/trans
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/fifo_en
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/eop
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/start_read
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_sync
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_data_pid
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_data_1_crc
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_data_2_crc
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_ack
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_nack
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/clear
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/byte_rcvd
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/load_enable
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/shift_en
add wave -noupdate -expand -group TX /tb_USB/DUT/TX/flag_8
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24325490 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 150
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
WaveRestoreZoom {0 ps} {36750 ns}
