// $Id: $
// File name:   clk_div.sv
// Created:     4/25/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Clock Divider

module clk_div (
	input wire	sysclk,
			n_rst,
	output reg	clk
);

	reg [3:0] count_out;

	flex_counter #(4) IN1 (.clk(sysclk), .n_rst(n_rst), .clear(0), .count_enable(1), .rollover_val(4'b1000), .rollover_flag(clk), .count_out(count_out)) ;

endmodule
