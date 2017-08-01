// $Id: $
// File name:   tb_data_2_rx.sv
// Created:     4/20/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench to test data sent to RX

`timescale 1ns/10ps

module tb_data_2_rx ();

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;
	localparam	CHECK_DELAY = 1; // Check 1ns after the rising edge to allow for propagation delay
	
	// Shared Test Variables
	reg tb_clk;

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/0.5);
		tb_clk = 1'b1;
		#(CLK_PERIOD/0.5);
	end	

	reg 	tb_n_rst,
		tb_cnt_up,
		tb_serial_in,
		tb_clear;
	
	reg	[7:0]	tb_parallel_out;
	reg		tb_byte_rcv;	

	data_2_rx DUT (.clk(tb_clk), .n_rst(tb_n_rst), .clear(tb_clear), .parallel_out(tb_parallel_out), .byte_rcv(tb_byte_rcv), .serial_in(tb_serial_in), .cnt_up(tb_cnt_up));

	initial begin
		tb_n_rst = 1'b1 ;
		tb_cnt_up = 1 ;
		tb_clear = 0 ;
		tb_serial_in = 1;
		#10
		@(negedge tb_clk)
		tb_n_rst = 1'b0 ;

		@(negedge tb_clk)
		tb_n_rst = 1'b1 ;

		@(negedge tb_clk)
		tb_serial_in = 0 ;
		@(negedge tb_clk)
		tb_serial_in = 1 ;
		#20
		@(negedge tb_clk)
		tb_serial_in = 0 ;
		#10
		@(negedge tb_clk)
		tb_serial_in = 1 ;
		#60
		@(negedge tb_clk)
		tb_serial_in = 0 ;
		
	end
endmodule
