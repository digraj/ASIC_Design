// $Id: $
// File name:   layout_tester.sv
// Created:     4/25/2017
// Author:      foo
// Lab Section: 99
// Version:     1.0  Initial Design Entry
// Description: wrapper file testing project layout inital setups (same as lab7 design)
/*
module layout_tester
(
	input  wire clk,
	input  wire n_rst, 
	output wire d_plus,
	output wire d_minus,
	input  wire transmit,
	input  wire write_enable,
	input  wire [7:0] write_data,
	output wire fifo_empty,
	output wire fifo_full
);
*/

module layout_tester (
	input wire	clk,
			n_rst,
			rx_en_host,
			crc_status,
			SD_FIFO_WRITE,
			read_done,
	output reg	sd_rx_en_read,
	input wire	[7:0] fifo_data,
	input wire	d_plus_in,
			d_minus_in,
	output reg	d_plus_out,
			d_minus_out,
	output reg 	[7:0]	useless,
	output reg	sd_tx_en_write
);
	
	USB TL
	(
		.clk,
		.n_rst,
		.rx_en_host,
		.crc_status,
		.SD_FIFO_WRITE,
		.read_done,
		.sd_rx_en_read,
		.fifo_data,
		.d_plus_in,
		.d_minus_in,
		.d_plus_out,
		.d_minus_out,
		.useless,
		.sd_tx_en_write
	);
	
endmodule
