// $Id: $
// File name:   counter.sv
// Created:     4/19/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Bit and Byte Counter

module bit_destuff (
	input wire	clk,
			n_rst,
			bit_rcvd,
			d_orig,
	output wire	pause
);

	reg [2:0] count_out ;

	flex_counter #(3) IN1 (.clk(clk), .n_rst(n_rst), .clear(!d_orig & bit_rcvd), .count_enable(bit_rcvd & d_orig), .rollover_val(3'b110), .rollover_flag(pause), .count_out(count_out)) ;

endmodule
