// $Id: $
// File name:   tb_bit_stuffer.sv
// Created:     4/19/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench for bit stuffer 

`timescale 1ns / 10ps

module tb_bit_stuffer ();

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	

	integer tb_test_num;
	reg tb_clk;
	reg tb_n_rst;
	reg tb_d_orig;
	reg tb_d_data;
	reg tb_pause; 

	integer i; 
	reg [11:0] input_data = 12'b101011111110;

	// Clock generation block
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	bit_stuffer DUT (.clk(tb_clk), .n_rst(tb_n_rst), .d_orig(tb_d_orig), .d_data(tb_d_data), .pause(tb_pause));

	initial
	begin

	tb_n_rst = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_n_rst = 0;
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_n_rst = 1;

	for (i = 0; i < 13; i = i + 1)
	begin
		tb_d_orig = input_data[11] ; 

		@(negedge tb_clk)
		if(tb_pause == 1'b0)
			input_data = {input_data[10:0], 1'b0} ;
	end

	end

endmodule
