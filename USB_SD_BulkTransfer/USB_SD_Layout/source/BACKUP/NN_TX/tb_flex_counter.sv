// $Id: $
// File name:   tb_flex_counter.sv
// Created:     1/30/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: test bench for flex_counter

`timescale 1ns / 10ps

module tb_flex_counter();

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD	= 2.5;
	localparam	CHECK_DELAY = 1; // Check 1ns after the rising edge to allow for propagation delay
	localparam MAX_BIT = 3;
	

	integer tb_test_num;
	reg tb_n_rst;
	reg tb_clear;
	reg tb_count_enable;
        reg tb_rollover_flag;
	reg [MAX_BIT:0] tb_rollover_val;
	reg [MAX_BIT:0] tb_count_out;
	
	// Shared Test Variables
	reg tb_clk;

	// Clock generation block
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end

	flex_counter DUT (.clk(tb_clk), .n_rst(tb_n_rst), .clear(tb_clear), .count_enable(tb_count_enable), .rollover_val(tb_rollover_val), .count_out(tb_count_out), .rollover_flag(tb_rollover_flag));


	
	// Default Configuration Test bench main process
	initial
	begin
		// Initialize all of the test inputs
		tb_n_rst	= 1'b1;		// Initialize to be inactive
		tb_clear	= 1'b0;		// Initialize to be idle
		tb_count_enable	= 1'b0;		// Initialize to be inactive
		tb_test_num 	= 0;
		
		// Power-on Reset of the DUT
		// Assume we start at negative edge. Immediately assert reset at first negative edge
		// without using clocking block in order to avoid metastable value warnings
		@(negedge tb_clk);
		tb_n_rst	<= 1'b0; 	// Need to actually toggle this in order for it to actually run dependent always blocks
		#(CLK_PERIOD * 10);
		tb_n_rst	<= 1'b1; 	// Deactivate the chip reset
		
		// Wait for a while to see normal operation
		#(CLK_PERIOD * 10);
		
		// Test 1: Check for Proper Reset with no inputs
		tb_test_num = 1;
		tb_n_rst <= 1'b0;
		tb_count_enable <= 1'b0;
                tb_clear <= 1'b0;
		tb_rollover_val <= 4'b1111;
		
		#(CLK_PERIOD * 10);
		tb_n_rst = 0;

		//Test 2: Normal operation 
		tb_test_num = 2;
		tb_n_rst = 1'b1;
		tb_count_enable = 1'b1;
                tb_clear = 1'b0;
		tb_rollover_val = 4'b0100;
		
		#( CLK_PERIOD * 10);
		tb_n_rst = 0;

		//Test 3: Enable disabled 
		tb_test_num = 3;
		tb_n_rst = 1'b1;
		tb_count_enable = 1'b0;
                tb_clear = 1'b0;
		tb_rollover_val = 4'b0100;
		
		#( CLK_PERIOD * 10);
		tb_n_rst = 0;

		//Test 4: Enable clear 
		tb_test_num = 2;
		tb_n_rst = 1'b1;
		tb_count_enable = 1'b1;
                tb_clear = 1'b1;
		tb_rollover_val = 4'b0100;
		
		#( CLK_PERIOD * 10);
		tb_n_rst = 0;

		//Test 5: Enable clear 
		tb_test_num = 2;
		tb_n_rst = 1'b1;
		tb_count_enable = 1'b1;
                tb_clear = 1'b1;
		tb_rollover_val = 4'b0001;
		
		#( CLK_PERIOD * 10);
		tb_n_rst = 0;
		
		//Test 6: Enable clear 
		tb_test_num = 6;
		tb_n_rst = 1'b1;
		tb_count_enable = 1'b0;
                tb_clear = 1'b1;
		tb_rollover_val = 4'b1111;
		
		#( CLK_PERIOD * 10);
		tb_n_rst = 0;

		//Test 7: Enable clear 
		tb_test_num = 7;
		tb_n_rst = 1'b1;
		tb_count_enable = 1'b1;
                tb_clear = 1'b0;
		tb_rollover_val = 4'b1010;
		
		#( CLK_PERIOD * 10);
		tb_n_rst = 0;
		
    end
 /*
		
*/
endmodule
