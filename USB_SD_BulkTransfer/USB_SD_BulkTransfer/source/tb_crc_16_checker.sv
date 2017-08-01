// $Id: $
// File name:   tb_crc_16_checker.sv
// Created:     4/20/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Test bench for crc 16 checker

`timescale 1ns / 10ps

module tb_crc_16_checker() ; 

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	
	reg tb_clk ;
	reg tb_n_rst ;
	reg tb_shift_enable;
	reg tb_serial_in;
	reg [15:0] tb_parallel_out;

	integer i; 
	reg [31:0] input_data = 32'h03_02_A5_FE; 

	//01001000000100001

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	crc_16_checker DUT (.clk(tb_clk), .n_rst(tb_n_rst), .shift_enable(tb_shift_enable), .serial_in(tb_serial_in), .parallel_out(tb_parallel_out));

	initial
	begin

		tb_n_rst = 1; 

		@(negedge tb_clk)
		tb_n_rst = 0;

		@(negedge tb_clk)
		tb_n_rst = 1;

		@(negedge tb_clk)
		tb_shift_enable = 1;

		for (i = 0; i < 32; i = i + 1)
		begin
			tb_serial_in = input_data[31] ; 

			@(negedge tb_clk)
			input_data = {input_data[30:0], 1'b0} ; 
		end

		@(negedge tb_clk)
		tb_shift_enable = 0;

		repeat (5) begin
			@(negedge tb_clk);
		end

		@(negedge tb_clk)
		tb_shift_enable = 1;
		input_data = 32'hF9_56_AA_C4;

		for (i = 0; i < 32; i = i + 1)
		begin
			tb_serial_in = input_data[31] ; 

			@(negedge tb_clk)
			input_data = {input_data[30:0], 1'b0} ; 
		end

		@(negedge tb_clk)
		tb_shift_enable = 0;

	end

endmodule


/*
module tb_crc_16_checker() ; 

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	
	reg tb_clk ;
	reg tb_n_rst ;
	reg tb_ena;
	reg tb_eop;
	reg tb_data_in; 
	reg [15:0] tb_crc_out;

	integer i; 
	reg [23:0] input_data = 24'b111100000100010000000000; 

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	crc_16_checker DUT (.clk(tb_clk), .n_rst(tb_n_rst), .ena(tb_ena), .data_in(tb_data_in), .crc_out(tb_crc_out), .eop(tb_eop));

	initial
	begin

		tb_n_rst = 1;
		tb_ena = 1;
		tb_eop = 0;

		@(negedge tb_clk)
		tb_n_rst = 0;

		@(negedge tb_clk)
		tb_n_rst = 1;

		@(negedge tb_clk);

		for (i = 0; i < 24; i = i + 1)
		begin
			tb_data_in = input_data[23] ; 

			@(negedge tb_clk)
			input_data = {1'b0, input_data[22:1]} ; 
		end

	end

endmodule
*/
