// $Id: $
// File name:   usb_transmitter.sv
// Created:     4/21/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Main controller for the USB Transmitter 

module usb_transmitter (
    	input wire    	clk,
                        n_rst,
                        send_data,   
                        tx_ena,
			tx_nack, 
			write_done, 
			tx_ack,
	input wire	[7:0]parallel_in,
	input wire	buff_empty,

	output reg	d_plus,
			d_minus,
			trans,	
			fifo_en,
			tx_complete,
			sd_tx_en_write
);


reg 	eop, start_read, load_ena, load_sync, load_data_pid, load_data_1_crc, load_data_2_crc, load_ack, load_nack, clear, fifo_full;



	tcu CONTROLLER 
	(
	    		.clk(clk),
		        .n_rst(n_rst),
		        .send_data(send_data),  // data packed needs to be sent 
		        .tx_ena(tx_ena),
		       	.buff_empty(buff_empty), //input from the timer indicating that the fifo is empty
			.tx_nack(tx_nack), 
			.write_done(write_done), 
			.tx_ack(tx_ack),
			.cnt_done(byte_rcvd), 
	
			.clear,
			.eop(eop),
			.fifo_en(fifo_en), 
			.start_read(start_read),  // when i want to read from the SD Buffer 
			.trans(trans),
			.tx_complete,
			.load_ena(load_enable), // when I am shifting out a byte      
			.load_sync(load_sync), 
			.load_data_pid(load_data_pid) , 
			.load_data_1_crc(load_data_1_crc), 
			.load_data_2_crc(load_data_2_crc), 
			.load_ack(load_ack) , 
			.load_nack(load_nack),
			.sd_tx_en_write
	);


	flex_pts_sr #(8,0) FLEX_PTS 
	(
			.clk(clk),
			.n_rst(n_rst),
			.shift_enable(shift_en), //TCU
			.load_enable(load_enable), //TCU
			.parallel_in(parallel_in),
			.load_sync(load_sync), 
			.load_data_pid(load_data_pid) , 
			.load_data_1_crc(load_data_1_crc), 
			.load_data_2_crc(load_data_2_crc), 
			.load_ack(load_ack) , 
			.load_nack(load_nack),

			.serial_out(bit_out) 
	);

	bit_stuffer STUFF
	(
			.clk(clk), 
			.n_rst(n_rst), 
			.d_orig(bit_out),
			.flag_8(flag_8),

			.pause(pause)
	);


	tx_timer TIMER
	(
			.clk(clk),
			.n_rst(n_rst),
			.pause(pause),
			.count_up(start_read),
			.clear_64(clear),
			
			.shift_en(shift_en),
			.byte_rcvd(byte_rcvd),
			.flag_8(flag_8)
	);


	nrzi_encode ENCODE
	(
			.clk(clk),
			.n_rst(n_rst),
			.d_orig(bit_out),
			.eop(eop),
			.pause(pause),
			.flag_8(flag_8),

			.d_plus(d_plus),
			.d_minus(d_minus)
	);


endmodule 

