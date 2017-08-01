// $Id: $
// File name:   bd_controller.sv
// Created:     4/19/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Bulk Data Transfer Controller.

module bd_controller (
	input wire		clk,
				n_rst,
				rcving,
				txing,
				rcvd_exp_hs,
				send_nack_in,
				addr_dne,
				tx_complete,
	input wire 	[2:0]	pckt_rcvd,
	output reg		rx_en,
				tx_en,
				send_data,
				send_ack,
				send_nack_out,
				rx_exp_hs,
				ack_packet_rcv	
) ;
/*
	typedef enum reg [3:0] {
		IDLE,			//idle state
		NOTHING,
		TX_DATA_HOST, 
		IN,
		OUT,
		DATA,
		SEND_ACK_IN,
		ACTIVATE_RCV_OUT,
		ACTIVATE_RCV_IN,
		SEND_ACK_OUT,
		SEND_ACK_DATA,
		SEND_NACK,
		CHK_ADDR_DNE,
		CHK_EXP_HS			
	} state_type ;
*/	

	typedef enum reg [3:0] {
		IDLE,	
		SEND_NACK,
		IN,
		OUT,
		DATA,
		NOTHING,
		CHK_EXP_HS,
		CHK_ADDR_DNE,		//idle state
		TX_DATA_HOST, 
		SEND_ACK_IN,
		ACTIVATE_RCV_OUT,
		ACTIVATE_RCV_IN,
		SEND_ACK_OUT,
		SEND_ACK_DATA		
	} state_type ;


	state_type	next_state, 
			curr_state ;	

	always_ff @ (posedge clk, negedge n_rst) begin
		if (n_rst == 1'b0)
			curr_state <= IDLE ;
		else
			curr_state <= next_state ;
	end


	always_comb begin
		next_state = curr_state;
		case (curr_state) 
			IDLE: begin
				if (send_nack_in)
					next_state = SEND_NACK;
				else if (pckt_rcvd == 3'b100)
					next_state = NOTHING;
				else if (pckt_rcvd == 3'b001)
					next_state = IN;
				else if (pckt_rcvd == 3'b010)
					next_state = OUT;
				else if (pckt_rcvd == 3'b011)
					next_state = DATA;
			end

			NOTHING: begin
				next_state = CHK_EXP_HS;
			end

			CHK_EXP_HS: begin
				next_state = IDLE;
				if (rcvd_exp_hs)
					next_state = CHK_ADDR_DNE;
			end

			IN: begin
				next_state = SEND_ACK_IN;
			end

			OUT: begin
				next_state = SEND_ACK_OUT;
			end

			DATA: begin
				next_state = SEND_ACK_DATA;
			end

			SEND_ACK_IN: begin
				if (tx_complete)
					next_state = TX_DATA_HOST;
			end

			SEND_ACK_OUT: begin
				if (tx_complete)
					next_state = ACTIVATE_RCV_OUT;
			end

			ACTIVATE_RCV_OUT: begin
				next_state = IDLE;
			end

			SEND_ACK_DATA: begin
				if (tx_complete)
					next_state = IDLE;
			end

			SEND_NACK: begin
				if (tx_complete)
					next_state = IDLE;
			end

			CHK_ADDR_DNE: begin
				next_state = IDLE;
			end

			TX_DATA_HOST: begin
				if (tx_complete)
					next_state = ACTIVATE_RCV_IN;
			end

			ACTIVATE_RCV_IN: begin
				if (rcvd_exp_hs)
					next_state = IDLE;
			end
		endcase
	end

/*
				rx_en,
				tx_en,
				send_data,
				send_ack,
				send_nack_out,
				rx_exp_hs,
				ack_packet_rcv	
*/	


	always_comb begin
		rx_en = 0 ;
		tx_en = 0 ;
		send_data = 0 ;
		send_ack = 0 ;
		send_nack_out = 0 ;
		rx_exp_hs = 0 ;
		ack_packet_rcv = 0 ;
		case (curr_state)
			IN: begin
				tx_en = 1;
				send_ack = 1;
				ack_packet_rcv = 1;
			end

			OUT: begin
				tx_en = 1;
				send_ack = 1;
				ack_packet_rcv = 1;
			end

			ACTIVATE_RCV_OUT: begin
				rx_en = 1;
			end

			DATA: begin
				tx_en = 1;
				send_ack = 1;
				ack_packet_rcv = 1;
			end

			SEND_ACK_IN: begin
				send_ack = 1;
			end

			SEND_ACK_OUT: begin
				send_ack = 1;
			end

			SEND_ACK_DATA: begin
				send_ack = 1;
			end

			SEND_NACK: begin
				tx_en = 1;
				send_nack_out = 1;
			end

			TX_DATA_HOST: begin
				tx_en = 1;
				send_data = 1;
			end

			ACTIVATE_RCV_IN: begin
				rx_en = 1;
				rx_exp_hs = 1;
			end
		endcase
	end
endmodule






