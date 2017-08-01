// $Id: $
// File name:   receiverUSB.sv
// Created:     4/20/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: USB Receiver Top Level file

module receiverUSB (
	input wire 	clk,
			n_rst,
			d_plus,
			d_minus,
	output reg	[7:0] read_data,
	output reg	fifo_empty,
			fifo_full
) ;


	
