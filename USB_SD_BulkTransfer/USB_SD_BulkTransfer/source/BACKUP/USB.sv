// $Id: $
// File name:   USB.sv
// Created:     4/26/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Top level file for USB

module USB (
	input wire	clk,
			n_rst,
			rx_en_host,
			crc_status,
//			SD_FIFO_READ, //from SD card
			SD_FIFO_WRITE,
			read_done,
//			write_done,
	output reg	sd_rx_en_read,
//			sd_tx_en_write,
	input wire	[7:0] fifo_data,
	input wire	d_plus_in,
			d_minus_in,
	output reg	d_plus_out,
			d_minus_out,
	output reg 	[7:0]	useless,
	output reg	sd_tx_en_write
);

	reg 	trans,
		rcvd_exp_hs,
		rcving,
		txing,
		send_nack_out,
		send_nack_in,
		send_data,
		send_ack,
		rx_en,
		tx_en,
		fifo_empty,
		fifo_full,
		write_fifo_empty,
		write_fifo_full,
		hs_rcv,
		fill_dbuff,
		dbuff_clr,
		read_fifo_en,
		tx_complete,
		ack_packet_rcv;


	reg  	[7:0]  	parallel_in;
	reg  	[1:0]  	pckt_rcvd;
	reg 		addr_dne;
	reg	[7:0]	USB_SD_Data;

	readFIFO FIFOREAD (
			.clk,
			.n_rst,
			.write_enable(SD_FIFO_WRITE),
			.read_enable(read_fifo_en),
			.write_data(fifo_data),
			.read_data(parallel_in),
			.fifo_empty,
			.fifo_full
	) ;

	bd_controller BD (
			.clk,
			.n_rst,
			.rcving,
			.txing(txing),
			.rcvd_exp_hs,
			.send_nack_in(send_nack_in),
			.addr_dne,
			.pckt_rcvd,
			.tx_complete,

			.rx_en,
			.tx_en,
			.send_data,
			.send_ack,
			.send_nack_out(send_nack_out),
			.rx_exp_hs(hs_rcv),
			.ack_packet_rcv
	) ;

	usb_transmitter TX (
		      	.clk,
		      	.n_rst,
		       	.send_data,   
		        .tx_ena(tx_en),
		        .buff_empty(fifo_empty),
//			.sd_tx_en_write(sd_tx_en_write), 
			.tx_nack(send_nack_out), 
			.write_done(fifo_full), 
			.tx_ack(send_ack),
		 	.parallel_in, 
			.d_plus(d_plus_out),
			.d_minus(d_minus_out),
			.trans(txing),  
			.fifo_en(read_fifo_en),
			.tx_complete,  
			.sd_tx_en_write
	);

	USB_rx	RX (
	 		.clk,				
			.n_rst,				
			.d_plus(d_plus_in), 			
			.d_minus(d_minus_in),							
			.read_done,				
			.rx_en(rx_en | rx_en_host),				
			.hs_rcv,				
			.crc_status,			
			.rcving,	
			.fill_dbuff,
			.dbuff_clr,			
			.send_nack(send_nack_in),			
			.rcvd_exp_hs,			
			.sd_rx_en_read,			
			.addr_dne,			
			.fifo_full(write_fifo_full),			
			.pckt_rcvd,
			.fifo_empty(write_fifo_empty),
			.data(USB_SD_Data),	
			.ack_packet_rcv	
	);


	writeFIFO FIFOWRITE (
			.clk(clk),
			.n_rst(n_rst),
			.read_enable(dbuff_clr),
			.write_enable(fill_dbuff),
			.write_data(USB_SD_Data),
			.read_data(useless),
			.fifo_empty(write_fifo_empty),
			.fifo_full(write_fifo_full)
	);

endmodule
