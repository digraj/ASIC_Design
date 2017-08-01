// $Id: $
// File name:   data_2_rx.sv
// Created:     4/20/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Top level file for data 2 rx.

module data_2_rx (
	input wire 			clk,
					n_rst,
					cnt_up,
					serial_in,
					clear,
	output reg		[7:0] 	parallel_out,
	output reg			byte_rcv
);

	reg byte_rcved ;

	serial_2_parallel #(8, 1) STP (
			 		.clk(clk),
					.n_rst(n_rst),
					.shift_enable(byte_rcved),
					.serial_in(serial_in), 
					.parallel_out(parallel_out), 
					.byte_rcv(byte_rcv)
	);

	counter CNT (
					.clk,
					.n_rst,
					.cnt_up,
					.clear,
					.byte_rcvd(byte_rcved)
	); 

endmodule