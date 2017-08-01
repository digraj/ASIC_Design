// $Id: $
// File name:   initial_stuff.sv
// Created:     4/24/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Initializer for Receiver

module initial_stuff (
	input wire		clk,
				n_rst,
				d_plus,
				d_minus,
				cnt_up,
	output wire		d_orig,
				eop,
	output wire	[7:0] 	data
) ;

	reg 		falling_edge,
			bit_rcvd,
			byte_rcvd,
			pause;
	reg 	[7:0]	parallel_out;
	reg 		clear ;

	d_edge_det EDGE	(
			.clk,
			.n_rst,
			.d_plus,
			.falling_edge
	) ;

	serial_2_parallel STP	(
		 	.clk,
			.n_rst,
			.shift_enable(bit_rcvd),
			.pause,
			.serial_in(d_orig),		//Check this 
			.parallel_out(data)
	);

	nrzi_decode DEC (
		 	.clk, 
			.n_rst,
			.d_plus,
			.d_minus,
			.bit_rcvd,			
			.d_orig,
			.eop
	);

	bit_destuff BIT_DE	(
			.clk,
			.n_rst,
			.bit_rcvd,
			.d_orig,
			.pause
	);


	counter CNT	(
			.clk,
			.n_rst,
			.cnt_up,
			.pause,
			.clear,
			.d_plus,
			.byte_rcvd,
			.bit_rcvd
	);
endmodule
