// $Id: $
// File name:   tb_USB.sv
// Created:     4/26/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench for USB

`timescale 1ns / 10ps

module tb_USB (); 

	localparam	CLK_PERIOD	= 10.42;
	reg		tb_clk;
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	reg		tb_n_rst,
			tb_rx_en_host,
			tb_crc_status,
			tb_read_done;

	reg		[7:0] tb_write_data;
	reg		[7:0]	useless;

 	reg		tb_d_plus,
			tb_d_plus_out,
			tb_d_minus,
			tb_d_minus_out,
			tb_sd_rx_en_read,
			tb_write_enable,
			tb_sd_tx_en_write;
	
	integer	here;

	USB DUT (
			.clk(tb_clk),
			.n_rst(tb_n_rst),
			.rx_en_host(tb_rx_en_host),
			.crc_status(tb_crc_status),	
			.read_done(tb_read_done),
//			.write_done(tb_write_done),
			.fifo_data(tb_write_data),
			.d_plus_in(tb_d_plus),
			.d_minus_in(tb_d_minus),
			.d_plus_out(tb_d_plus_out),
			.d_minus_out(tb_d_minus_out),
			.sd_rx_en_read(tb_sd_rx_en_read),
			.SD_FIFO_WRITE(tb_write_enable),
			.useless,
			.sd_tx_en_write(tb_sd_tx_en_write)
	);


	initial
	begin
		here = 0 ;
		tb_n_rst = 1;
		tb_crc_status = 1;
		tb_rx_en_host = 1;
		tb_d_plus = 1;
		tb_d_minus = 1;
		tb_read_done = 0;
//		tb_write_done = 0;
//		tb_sd_rx_en_read = 0;
		tb_write_enable = 0;
		tb_write_data = 8'b10101010;
		@(negedge tb_clk)
		tb_n_rst = 1'b0 ;

		@(negedge tb_clk)
		tb_n_rst = 1'b1 ;
		tb_rx_en_host = 1;
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_rx_en_host = 0 ;
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		//10110100
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;		
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)	
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
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
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;	
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;	
		#(CLK_PERIOD * 8)	
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
//		#(CLK_PERIOD * 8)
//		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		//sync byte rcved. waiting for DATA pid

		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;	
		#(CLK_PERIOD * 8)	
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;	
		#(CLK_PERIOD * 8)	
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;	
		#(CLK_PERIOD * 8)	
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)

		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)

		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;	
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)

		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 0 ;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0 ;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_read_done = 1;		
		

		//FINISHED SENDING DATA TO BUFFER

		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_rx_en_host = 1;
		tb_d_plus = 0 ;
		tb_d_minus = 1 ;
		#(CLK_PERIOD * 8)
		tb_rx_en_host = 0;
		#(CLK_PERIOD * 8)
//		#(CLK_PERIOD * 8)
		tb_d_plus = 1 ;
		tb_d_minus = 0 ;
		#(CLK_PERIOD * 8)
		//10010110
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
//		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
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
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
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
//		tb_d_plus = 0;
//		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 0;

		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;

		
		tb_write_enable = 1;
		@(negedge tb_clk);
		@(negedge tb_clk)
		tb_write_data = 8'b11001100;
		@(negedge tb_clk)
		tb_write_data = 8'b11110000;
		@(negedge tb_clk)
		tb_write_data = 8'b11110011;
		@(negedge tb_clk)
		tb_write_data = 8'b10100011;
		@(negedge tb_clk)
		tb_write_data = 8'b10101010;
		@(negedge tb_clk)
		tb_write_data = 8'b01011100;
		@(negedge tb_clk)
		tb_write_data = 8'b11111110;
		@(negedge tb_clk)
		tb_write_enable = 0;

		repeat (108) #(CLK_PERIOD * 8);

		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_rx_en_host = 0 ;
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		//10110100
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
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
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_minus = 1;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 1;
		tb_d_minus = 0;
		#(CLK_PERIOD * 8)
		#(CLK_PERIOD * 8)
		tb_d_plus = 0;
		tb_d_plus = 0;
	end

endmodule




















