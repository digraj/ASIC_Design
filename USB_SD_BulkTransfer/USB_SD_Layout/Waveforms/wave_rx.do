onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_USB_rx/tb_clk
add wave -noupdate /tb_USB_rx/tb_n_rst
add wave -noupdate /tb_USB_rx/DUT/d_plus
add wave -noupdate /tb_USB_rx/DUT/d_minus
add wave -noupdate /tb_USB_rx/DUT/DEC/d_orig
add wave -noupdate /tb_USB_rx/DUT/RCU/curr_state
add wave -noupdate /tb_USB_rx/DUT/RCU/data_rx
add wave -noupdate /tb_USB_rx/DUT/CNT/cnt_up
add wave -noupdate -divider RCU
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/rx_en
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/eop
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/byte_rcvd
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/crc_status_5
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/crc_status_16
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/hs_rcv
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/fifo_empty
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/read_done
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/data_rx
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/rcving
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/count_up
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/dbuff_clr
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/rcvd_exp_hs
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/send_nack
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/addr_dne
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/fill_dbuff
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/sd_rx_en_read
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/clear
add wave -noupdate -expand -group RCU /tb_USB_rx/DUT/RCU/pckt_rcvd
add wave -noupdate -divider Timer
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/cnt_up
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/clear
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/pause
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/d_plus
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/byte_rcvd
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/bit_rcvd
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/count_out_bit
add wave -noupdate -expand -group Timer /tb_USB_rx/DUT/CNT/count_out_byte
add wave -noupdate -divider FIFO
add wave -noupdate -group FIFO /tb_USB_rx/DUT/FIFO/write_enable
add wave -noupdate -group FIFO /tb_USB_rx/DUT/FIFO/write_data
add wave -noupdate -group FIFO /tb_USB_rx/DUT/FIFO/fifo_empty
add wave -noupdate -group FIFO /tb_USB_rx/DUT/FIFO/fifo_full
add wave -noupdate -divider STP
add wave -noupdate -group STP /tb_USB_rx/DUT/STP/shift_enable
add wave -noupdate -group STP /tb_USB_rx/DUT/STP/pause
add wave -noupdate -group STP /tb_USB_rx/DUT/STP/serial_in
add wave -noupdate -group STP /tb_USB_rx/DUT/STP/parallel_out
add wave -noupdate -divider Decoder
add wave -noupdate -group Decoder /tb_USB_rx/DUT/DEC/bit_rcvd
add wave -noupdate -group Decoder /tb_USB_rx/DUT/DEC/d_orig
add wave -noupdate -group Decoder /tb_USB_rx/DUT/DEC/eop
add wave -noupdate -divider Destuffer
add wave -noupdate -group Destuffer /tb_USB_rx/DUT/BIT_DE/bit_rcvd
add wave -noupdate -group Destuffer /tb_USB_rx/DUT/BIT_DE/pause
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9372639 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 123
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
WaveRestoreZoom {0 ps} {26250 ns}
