// $Id: $
// File name:   tb_encode.sv
// Created:     4/18/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench for nrzi encoder

`timescale 1ns / 10ps

module tb_encode();

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	

	integer tb_test_num;
	reg tb_clk;
	reg tb_n_rst;
	reg tb_d_orig;
	reg tb_d_plus;
	reg tb_d_minus;
	reg tb_eop; 

	// Clock generation block
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	nrzi_encode DUT (.clk(tb_clk), .n_rst(tb_n_rst), .d_orig(tb_d_orig), .d_plus(tb_d_plus), .d_minus(tb_d_minus), .eop(tb_eop));

	initial
	begin
	
	tb_eop = 0;

	tb_n_rst = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_n_rst = 0;
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_n_rst = 1;
	
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 0;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 0;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 0;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 0;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 0;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 0;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(0.5)
	tb_d_orig = 1;
	@(negedge tb_clk)
	#(100)
	tb_eop = 1 ;

	end	


endmodule
