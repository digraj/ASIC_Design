// $Id: $
// File name:   tb_crc_16_gen.sv
// Created:     4/19/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Test bench for crc 16 generate block

`timescale 1ns / 10ps
/*
module tb_crc_16_gen() ; 
	localparam	CLK_PERIOD	= 2.5;	

    	reg	tb_clk;
	reg	tb_n_rst;
    	reg	tb_shift_en;
    	reg	tb_serial_in; 
    	reg 	[15:0] tb_parallel_out;
	reg 	[15:0] input_data; 
	integer i;

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	crc_16_gen DUT (.clk(tb_clk), .n_rst(tb_n_rst), .shift_en(tb_shift_en), .serial_in(tb_serial_in), .parallel_out(tb_parallel_out));

	initial
	begin
		tb_shift_en = 1;

		tb_n_rst = 1;

		@(negedge tb_clk)
		tb_n_rst = 0;
		@(negedge tb_clk)
		tb_n_rst = 1;
		input_data = 16'h0F_3A; 

		for (i = 0; i < 16; i = i + 1)
		begin
			tb_serial_in = input_data[0] ; 

			@(negedge tb_clk)
			input_data = {1'b0, input_data[15:1]} ; 
		end

		@(negedge tb_clk)
		tb_shift_en = 0;
	end

endmodule

*/

module tb_crc_16_gen() ; 

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	
	reg tb_clk ;
	reg tb_n_rst ;
	reg tb_shift_enable;
	reg tb_serial_in;
	reg [7:0] tb_crc_gen_1;
	reg [7:0] tb_crc_gen_2;
	reg tb_clear;

	integer i; 
	reg [79:0] input_data = 80'h12_A5_67_89_C4_B4_7F_D2_00_00; 

	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	crc_16_gen DUT (.clk(tb_clk), .n_rst(tb_n_rst), .shift_enable(tb_shift_enable), .serial_in(tb_serial_in), .crc_gen_1(tb_crc_gen_1), .crc_gen_2(tb_crc_gen_2), .clear(tb_clear));

	initial
	begin

		tb_n_rst = 1; 
		tb_clear = 1;
		@(negedge tb_clk)
		tb_n_rst = 0;

		@(negedge tb_clk)
		tb_n_rst = 1;

		@(negedge tb_clk)
		tb_shift_enable = 1;
		tb_clear =0;
		for (i = 0; i < 80; i = i + 1)
		begin
			tb_serial_in = input_data[79] ; 

			@(negedge tb_clk)
			input_data = {input_data[78:0], 1'b0} ; 
		end

		@(negedge tb_clk)
		tb_shift_enable = 0;
		tb_clear  = 1;
		input_data = 80'ha68120ae10941370_00_00;
		repeat (10) #(CLK_PERIOD);

		tb_n_rst = 1; 
		tb_clear = 1;
		@(negedge tb_clk)
		tb_n_rst = 0;

		@(negedge tb_clk)
		tb_n_rst = 1;

		@(negedge tb_clk)
		tb_shift_enable = 1;
		tb_clear =0;
		for (i = 0; i < 80; i = i + 1)
		begin
			tb_serial_in = input_data[79] ; 

			@(negedge tb_clk)
			input_data = {input_data[78:0], 1'b0} ; 
		end

		@(negedge tb_clk)
		tb_shift_enable = 0;


	end

endmodule

/*
	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;	

	integer tb_test_num;
	reg tb_clk;
	reg tb_n_rst;
	reg tb_crc16_data; 
	reg tb_crc16_en;
 
	reg [15:0] tb_crc16_out; 

	integer i, mask; 
	reg [7:0] input_data = 8'b11110000; 

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
		tb_n_rst = 0;
		@(negedge tb_clk)
		tb_n_rst = 1;
	
		@(negedge tb_clk);

		for (i = 0; i < 8; i = i + 1)
		begin
			tb_crc16_data = input_data[7] ; 

			@(negedge tb_clk)
			input_data = {input_data[6:0], 1'b0} ; 
		end

	end

endmodule
*/
