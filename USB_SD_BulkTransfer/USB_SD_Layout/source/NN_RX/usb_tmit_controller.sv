// $Id: $
// File name:   usb_tmit_controller.sv
// Created:     4/17/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: USB Transmitter Controller

module usb_tmit_controller (
	input wire		clk,
				n_rst,
				load_en, 
				shift_en,				
				tx_transmit, 
				tx_send_ack,
				tx_send_nack,				
				fifo_empty;
	input wire 	[4:0]	crc_val;
	output reg	[7:0]	tx_data;
	output reg		sending,
				sd_en,
				crc_sync_rst;
	output	reg		eop;
) ;

	typedef enum reg [4:0] {
					
	} state_type ;

	state_type	next_state, 
			curr_state;

	localparam 	SYNC_BYTE_PID 	= 8'b10000000,
    			OUT_PID    	= 8'b00011110, 
    			IN_PID      	= 8'b10010110, 
    			SOF_PID     	= 8'b10100101,  
    			DATA0_PID   	= 8'b11000011,
    			ACK_PID    	= 8'b01001011, 
    			NACK_PID    	= 8'b01011010, 
    			STALL_PID  	= 8'b01111000,
			CRC16 		= 16'b0000000000000000,
			CRC5 		= 5'b00000;


	always_ff @ (posedge clk, negedge n_rst) begin
		if (n_rst == 1'b0)
			curr_state <= IDLE ;
		else
			curr_state <= next_state ;
	end


	always_comb begin
		next_state = curr_state;
		case (curr_state) begin
			IDLE: begin
				if (tx_transmit)
					next_state   = TX_SYNC ; 	
			end
	
			

	end					
		
endmodule

