// $Id: $
// File name:   tx_fifo.sv
// Created:     2/21/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Transfer register

module readFIFO (
	input wire	clk,
			n_rst,
			read_enable,
			write_enable,
	input wire	[7:0] write_data,
	output reg	[7:0] read_data,
	output reg	fifo_empty,
			fifo_full
) ;

	fifo F1 (.r_clk(clk), .w_clk(clk), .n_rst(n_rst), .r_enable(read_enable), .w_enable(write_enable), .w_data(write_data), .r_data(read_data), .empty(fifo_empty), .full(fifo_full)) ;

endmodule		
