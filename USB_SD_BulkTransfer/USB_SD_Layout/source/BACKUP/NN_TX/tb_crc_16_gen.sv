// $Id: $
// File name:   tb_crc_16_gen.sv
// Created:     4/19/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Test bench for crc 16 generate block

`timescale 1ns / 10ps

module tb_crc_16_gen() ; 

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	

	integer tb_test_num;
	reg tb_clk;
	reg tb_n_rst;
	reg tb_crc16_data; 
	reg tb_crc16_en;
 
	reg tb_crc16_out ; 

	integer i, mask; 
	reg [47:0] input_data = 48'h03_01_02_03_30_3A; 

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	crc_16_gen DUT (.clk(tb_clk), .n_rst(tb_n_rst), .crc16_data(tb_crc16_data), .crc16_en(tb_crc16_en), .crc16_out(tb_crc16_out));

	initial
	begin

		tb_n_rst = 1;
		tb_crc16_en = 1;
		@(negedge tb_clk)
		#(0.5)
		tb_n_rst = 0;
		@(negedge tb_clk)
		#(0.5)
		tb_n_rst = 1;

		#(50)


		for (i = 0; i < 48; i = i + 1)
		begin
			tb_crc16_data = input_data[47] ; 

			@(negedge tb_clk)
			input_data = {input_data[46:0], 1'b0} ; 
		end

	end

endmodule
