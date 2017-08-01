// $Id: $
// File name:   sd_interface_top_level.sv
// Created:     4/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: This is the top level file for the SD Card 

module sd_interface_top_level
(
	input wire clk,
	input wire n_rst,
	input wire write,
	input wire read,
	//input wire [63:0] write_data,
	input wire [7:0] write_data,
	input wire MISO,
	//NEW SIGNALS
	input wire fifo_empty,
	input wire fifo_full,
	output wire read_fifo,
	output wire write_fifo,
	//output wire [63:0] read_data,
	output wire [7:0] read_data,
	output wire write_done,	
	output wire read_done,
	output wire spi_init_done,
	output wire CS,
	output wire sclk,
	output wire MOSI
);

reg rising_edge_sclk;
reg shift_data;
reg shift_command;
reg load_data;
reg load_command;
reg [47:0] command;
reg shift_read;
reg [7:0] sd_rsp_msg;
reg divider;



sd_tx_data TX
(
	.clk(clk), 
	.n_rst(n_rst),
	.rising_edge_sclk(rising_edge_sclk),
	.shift_data(shift_data),
	.shift_command(shift_command),
	.load_data(load_data),
	.load_command(load_command),
	.command(command),
	.data(write_data),
	.MOSI(MOSI) 
);

sd_rx_data RX
(
	.clk(clk), 
	.n_rst(n_rst),
	.rising_edge_sclk(rising_edge_sclk),
	.shift_read(shift_read),
	.MISO(MISO),
	.sd_rsp_msg(sd_rsp_msg),
	.data(read_data)
);

sd_main_controller CT
(
	.clk(clk), 
	.n_rst(n_rst),
	.rising_edge_sclk(rising_edge_sclk),
	.write(write),
	.read(read),
	.sd_rsp_msg(sd_rsp_msg),
	.fifo_empty(fifo_empty),
	.fifo_full(fifo_full),
	.read_fifo(read_fifo),
	.write_fifo(write_fifo),
	.CS(CS),
	.spi_init_done(spi_init_done),
	.write_done(write_done),
	.read_done(read_done),
	.command(command),
	.divider(divider),
	.load_command(load_command),
	.load_data(load_data), 
	.shift_data(shift_data), 
	.shift_command(shift_command),
	.shift_read(shift_read)
);

sd_clock_divider CD
(
	.clk(clk),
	.n_rst(n_rst),
	.divider(divider), 
	.sclk(sclk)
);

sd_rising_edge RS
(
	.clk(clk), 
	.n_rst(n_rst),
	.sclk(sclk),
	.rising_edge_sclk(rising_edge_sclk)
);

endmodule
