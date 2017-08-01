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

	integer tb_test_num;
	reg tb_clk ;
	reg tb_n_rst ;
	reg tb_eop ; 
	reg tb_data_in ; 
	reg tb_ena ;
	reg tb_crc_out ; 

	integer i; 
	reg [31:0] input_data = 32'h03_02_01_3A; 

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	crc_16_checker DUT (.clk(tb_clk), .n_rst(tb_n_rst), .eop(tb_eop), .data_in(tb_data_in), .ena(tb_ena), .crc_out(tb_crc_out));

	initial
	begin

		tb_n_rst = 1;
		tb_ena = 1;
		@(negedge tb_clk)
		#(0.5)
		tb_n_rst = 0;
		@(negedge tb_clk)
		#(0.5)
		tb_n_rst = 1;

		#(5)

		for (i = 0; i < 32; i = i + 1)
		begin
			tb_data_in = input_data[31] ; 

			@(negedge tb_clk)
			input_data = {input_data[30:0], 1'b0} ; 
		end

	end

endmodule
