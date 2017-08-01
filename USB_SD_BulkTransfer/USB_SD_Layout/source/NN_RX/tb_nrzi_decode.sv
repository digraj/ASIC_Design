// $Id: $
// File name:   tb_nrzi_decode.sv
// Created:     4/18/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench for NRZi Decoder

`timescale 1ns / 10ps

module tb_nrzi_decode ();
	
	localparam	CLK_PERIOD	= 2.5;

	reg 	tb_clk, 
		tb_n_rst,
		tb_d_orig,
		tb_d_minus,
		tb_d_plus,
		tb_eop ;

	always begin
		tb_clk = 1'b0 ;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1 ;
		#(CLK_PERIOD/2.0);
	end

	always_comb begin
		if (!tb_eop)
			tb_d_minus = !tb_d_plus ;
		else
			tb_d_minus = 0 ;
	end

	nrzi_decode DUT (.clk(tb_clk), .n_rst(tb_n_rst), .d_plus(tb_d_plus), .d_minus(tb_d_minus), .eop(tb_eop), .d_orig(tb_d_orig)) ;

	initial begin
		//INITIAL RESET OF DESIGN
		tb_n_rst = 1 ;
		tb_d_plus = 0 ;
		tb_eop = 0 ; 
		#5
		@(negedge tb_clk)
		tb_n_rst = 0 ;
		#5
		@(negedge tb_clk) 
		tb_n_rst = 1 ;
		//END RESTTING DESIGN	
		@(negedge tb_clk)	
		tb_d_plus = 1 ;		
		#15
		@(negedge tb_clk)
		tb_d_plus = 0 ;
		#5
		@(negedge tb_clk)	
		tb_d_plus = 1 ;
		#20
		@(negedge tb_clk)	
		tb_d_plus = 0 ;
		#10
		@(negedge tb_clk)
		tb_eop = 1 ;
	end
endmodule

		

		
		
