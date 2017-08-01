// $Id: $
// File name:   tb_initial_stuff.sv
// Created:     4/24/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench for inititial receiver stuff

`timescale 1ns / 10ps

module tb_initial_stuff () ;

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD  = 2.5;
	localparam	CHECK_DELAY = 1; // Check 1ns after the rising edge to allow for propagation delay
	
	// Shared Test Variables
	reg tb_clk;

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	reg 		tb_n_rst,
			tb_d_plus,
			tb_d_minus,
			tb_cnt_up,
			tb_d_orig,
			tb_eop;
	reg	[7:0] 	tb_data;

	initial_stuff DUT (
			.clk(tb_clk),
			.n_rst(tb_n_rst),
			.d_plus(tb_d_plus),
			.d_minus(tb_d_minus),
			.cnt_up(tb_cnt_up),
			.d_orig(tb_d_orig),
			.eop(tb_eop),
		 	.data(tb_data)
	) ;


	initial begin
		//reset design
		tb_d_plus = 1;
		tb_d_minus = 1;
		tb_cnt_up = 1;
		tb_n_rst = 1'b1 ;
		#10
		@(negedge tb_clk)
		tb_n_rst = 1'b0 ;

		@(negedge tb_clk)
		tb_n_rst = 1'b1 ;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
//		tb_d_plus = 0;
//		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;

	end
endmodule
		




