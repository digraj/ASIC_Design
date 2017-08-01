// $Id: $
// File name:   tb_receiverUSB.sv
// Created:     4/20/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Testbench for USB receiver

`timescale 1ns / 10ps

module tb_USB_rx () ;

	// Define parameters
	// basic test bench parameters
	localparam	CLK_PERIOD  = 2.5;
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

		
	reg	tb_n_rst;				
	reg	tb_d_plus;
	reg	tb_d_minus;			
	reg	tb_read_done;				
	reg	tb_rx_en;				
	reg	tb_hs_rcv;				
	reg	tb_crc_status;			
	reg	tb_rcving;				
	reg	tb_send_nack;			
	reg	tb_rcvd_exp_hs;			
	reg	tb_sd_rx_en_read;			
	reg	tb_addr_dne;			
	reg	tb_fifo_full;			
	reg	tb_pckt_rcvd;
	reg	[15:0] 	data_array;
	integer i; 

	USB_rx	DUT	(
				.clk(tb_clk),				
				.n_rst(tb_n_rst),				
				.d_plus(tb_d_plus),
				.d_minus(tb_d_minus),			
				.read_done(tb_read_done),				
				.rx_en(tb_rx_en),				
				.hs_rcv(tb_hs_rcv),				
				.crc_status(tb_crc_status),			
				.rcving(tb_rcving),				//start of outputs
				.send_nack(tb_send_nack),			
				.rcvd_exp_hs(tb_rcvd_exp_hs),			
				.sd_rx_en_read(tb_sd_rx_en_read),			
				.addr_dne(tb_addr_dne),			
				.fifo_full(tb_fifo_full),			
				.pckt_rcvd(tb_pckt_rcvd)		
	);

	localparam 	SYNC_BYTE 	= 8'b10000000,
    			OUT_PID    	= 8'b11100001, 
    			IN_PID      	= 8'b10010110,
    			DATA0_PID   	= 8'b00111100,
    			ACK_PID    	= 8'b10110100, 
    			NACK_PID    	= 8'b10100101,
			DEVICE_ADDR 	= 7'b1010101,
			ENP		= 4'b0000;

	initial begin
		//reset design
		tb_crc_status = 1;
		tb_rx_en = 0 ;
		data_array = 8'b11111101;
		tb_d_plus = 0;
		tb_d_minus = 0;
		tb_n_rst = 1'b1 ;
		#10
		@(negedge tb_clk)
		tb_n_rst = 1'b0 ;
		tb_rx_en = 1;

		@(negedge tb_clk)
		tb_n_rst = 1'b1 ;
		tb_hs_rcv = 1'b1;
		//CHECKING FOR HANDSHAKE
		for (i = 0; i < 8; i++) begin
			tb_d_plus = data_array[i] ;
			tb_d_minus = !data_array[i] ;
			@(negedge tb_clk);
		end
		tb_rx_en = 0 ;	
		data_array = 8'b0100011;
		for (i = 0; i < 8; i++) begin
			tb_d_plus = data_array[i] ;
			tb_d_minus = !data_array[i] ;
			@(negedge tb_clk);
		end
		
		tb_d_plus = 0 ;
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_d_minus = 0 ;
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		data_array = 8'b11111101;
		tb_d_plus = 0;
		tb_d_minus = 0;
		tb_n_rst = 1'b1 ;
		#10
		@(negedge tb_clk)
		tb_n_rst = 1'b0 ;
		tb_rx_en = 1;

		@(negedge tb_clk)
		tb_n_rst = 1'b1 ;
		tb_hs_rcv = 1'b0;
		//CHECKING FOR HANDSHAKE
		for (i = 0; i < 8; i++) begin
			tb_d_plus = data_array[i] ;
			tb_d_minus = !data_array[i] ;
			@(negedge tb_clk);
		end
		tb_rx_en = 0 ;	
		//11100001
		data_array = 11'b01111011101;
		$display($time);
		for (i = 0; i < 11; i++) begin
			tb_d_plus = data_array[i] ;
			tb_d_minus = !data_array[i] ;
			@(negedge tb_clk);
		end
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_d_plus = 1;
		tb_d_minus = 0;
		@(negedge tb_clk);
		tb_d_plus = 1;
		tb_d_minus = 0;
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_d_plus = 0;
		tb_d_minus = 0;
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		data_array = 8'b11111101;
		tb_d_plus = 0;
		tb_d_minus = 0;
		tb_n_rst = 1'b1 ;
		#10
		@(negedge tb_clk)
		tb_n_rst = 1'b0 ;
		tb_rx_en = 1;

		@(negedge tb_clk)
		tb_n_rst = 1'b1 ;
		tb_hs_rcv = 1'b0;
		//CHECKING FOR HANDSHAKE
		for (i = 0; i < 8; i++) begin
			tb_d_plus = data_array[i] ;
			tb_d_minus = !data_array[i] ;
			@(negedge tb_clk);
		end
		tb_rx_en = 0 ;	
		//10010110
		//11100001
		//data_array = 11'b01111011101
		data_array = 12'b1010100010101;
		$display($time);
		for (i = 0; i < 12; i++) begin
			tb_d_plus = data_array[i] ;
			tb_d_minus = !data_array[i] ;
			@(negedge tb_clk);
		end
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_d_plus = 1;
		tb_d_minus = 0;
		@(negedge tb_clk);
		tb_d_plus = 1;
		tb_d_minus = 0;
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		@(negedge tb_clk);
		tb_d_plus = 0;
		tb_d_minus = 0;
	end

endmodule






