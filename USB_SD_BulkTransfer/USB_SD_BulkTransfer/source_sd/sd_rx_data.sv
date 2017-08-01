// $Id: $
// File name:   sd_rx_data.sv
// Created:     4/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Serial to Parallel shift -- Read from SD Card

module sd_rx_data
(
	input wire clk,
	input wire n_rst,
	input wire rising_edge_sclk,
	input wire shift_read,
	//input wire shift_read_data,
	input wire MISO,
	output reg [7:0] sd_rsp_msg,
	output reg [7:0] data

);

	wire enable1;//, enable2;

	assign enable =  rising_edge_sclk & shift_read;
	//assign enable2  = rising_edge_sclk & shift_read_data; 

	flex_stp_sr #(8,1) FR1 ( .clk(clk), .n_rst(n_rst), .shift_enable(enable), .serial_in(MISO), .parallel_out(sd_rsp_msg));

	flex_stp_sr #(8,1) FR2 ( .clk(clk), .n_rst(n_rst), .shift_enable(enable), .serial_in(MISO), .parallel_out(data));



endmodule 