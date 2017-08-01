// $Id: $
// File name:   counter.sv
// Created:     4/19/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Bit and Byte Counter

module counter (
	input wire	clk,
			n_rst,
			cnt_up,
			clear,
			pause,
			d_plus,
	output wire	byte_rcvd,
			bit_rcvd
);

	reg [3:0] count_out_bit, count_out_byte;
	reg byte_counter;

	flex_counter #(4) IN1 (.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(cnt_up), .rollover_val(4'b1000), .rollover_flag(byte_counter), .count_out(count_out_bit)) ;

	flex_counter #(4) IN2 (.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(byte_counter & !pause), .rollover_val(4'b1000), .rollover_flag(byte_rcvd), .count_out(count_out_byte)) ;

	assign bit_rcvd = byte_counter ;

endmodule


