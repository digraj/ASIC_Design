// $Id: $
// File name:   usb_rcv_controller.sv
// Created:     4/10/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: USB Receiver Controller

module usb_rcv_controller (
	input wire		clk,
				n_rst,	
				rx_en,
				eop,
				byte_rcvd,
				crc_status_5,
				crc_status_16,
				hs_rcv,	
				fifo_empty,
				fifo_full,	
				read_done,
				ack_packet_rcv,		
	input wire	[7:0]	data_rx,
	output reg		rcving,
				count_up,
				dbuff_clr,
				rcvd_exp_hs,
				send_nack,
				addr_dne,
				fill_dbuff,
				sd_rx_en_read,
				clear,
	output reg	[1:0]	pckt_rcvd	
) ;

	typedef enum reg [5:0] {
		IDLE,			//idle state
		WAIT_SYNC,		
		CHK_SYNC,
		WAIT_PID,
		CHK_PID,
		IN_PID_RCV,
		OUT_PID_RCV,
		DATA_PID_RCV,
		ACK_PID_RCV,
		NACK_PID_RCV,
		ACK_CHK_EOP,
		SYNC_ERR,
		PID_ERR,
		HS_PID_ERR,
		SEND_PCKT,
		TOKEN_WAIT_ADDRESS,
		TOKEN_CHK_ADDRESS,
		TOKEN_ADDR_DNE,
		TOKEN_WAIT_ENP,
		TOKEN_CHK_ENP,
		TOKEN_ENP_ERR,
		TOKEN_WAIT_CRC,
		TOKEN_CHK_CRC,
		TOKEN_CHK_EOP,		//wait for eop in token packet
		TOKEN_CRC_ERR,		
		DATA_WAIT_DATA,
		DATA_DATA_RCV,
		DATA_WAIT_EOP,
		DATA_CHK_CRC,
		DATA_CRC_ERR,
		SD_READ,
		SEND_NACK,
		EIDLE,
		EMPTY_FIFO		
	} state_type ;
	
	state_type	next_state, 
			curr_state ;	
	
	localparam 	SYNC_BYTE 	= 8'b10000000,
    			OUT_PID    	= 8'b11100001,
    			IN_PID      	= 8'b10010110,
    			DATA0_PID   	= 8'b11000011,
    			ACK_PID    	= 8'b10110100, 
    			NACK_PID    	= 8'b10100101,
			DEVICE_ADDR 	= 7'b1010101,
			ENP		= 4'b0000;


	reg [6:0] 	valid_addr = 7'b1010101;
	reg [1:0]	temp_pckt = 2'b00;
	

	always_ff @ (posedge clk, negedge n_rst) begin
		if (n_rst == 1'b0)
			curr_state <= IDLE ;
		else
			curr_state <= next_state ;
	end

	//OUTPUT SELECTION	

	always_comb begin
		next_state = curr_state ;
		case (curr_state)
			IDLE: begin
				if (rx_en) 
					next_state = WAIT_SYNC ;
			end
	
			WAIT_SYNC: begin
				if (byte_rcvd)
					next_state = CHK_SYNC ;
			end
	
			CHK_SYNC: begin
				next_state = SYNC_ERR;
				if (data_rx == SYNC_BYTE)
					next_state = WAIT_PID;
			end

			WAIT_PID: begin
				if (byte_rcvd)
					next_state = CHK_PID;
			end

			CHK_PID: begin
				if (hs_rcv) begin
					if (data_rx == ACK_PID)
						next_state = ACK_PID_RCV;
					else if (data_rx == NACK_PID)
						next_state = NACK_PID_RCV;
				end else if (data_rx == IN_PID) 
					next_state = IN_PID_RCV;
				else if (data_rx == OUT_PID) 
					next_state = OUT_PID_RCV;
				else if (data_rx == DATA0_PID) 
					next_state = DATA_PID_RCV;	
				else
					next_state = PID_ERR;			
			end

			IN_PID_RCV: begin
				next_state = TOKEN_WAIT_ADDRESS;
			end

			OUT_PID_RCV: begin
				next_state = TOKEN_WAIT_ADDRESS;
			end

			DATA_PID_RCV: begin
				next_state = DATA_WAIT_DATA;
			end

			ACK_PID_RCV: begin
				next_state = ACK_CHK_EOP;
			end

			NACK_PID_RCV: begin
				next_state = SEND_PCKT;
			end

			SYNC_ERR: begin
				next_state = SEND_NACK;
			end

			PID_ERR: begin
				next_state = SEND_NACK;
			end

			HS_PID_ERR: begin
				next_state = SEND_NACK;
			end

			TOKEN_WAIT_ADDRESS: begin
				if (byte_rcvd) 
					next_state = TOKEN_CHK_ADDRESS;
			end

			TOKEN_CHK_ADDRESS: begin
				next_state = TOKEN_ADDR_DNE;
				if (data_rx[7:1] == DEVICE_ADDR)
					next_state = TOKEN_WAIT_ENP;
			end

			TOKEN_ADDR_DNE: begin
				next_state = SEND_PCKT;
			end

			TOKEN_WAIT_ENP: begin
				if (byte_rcvd)
					next_state = TOKEN_CHK_ENP;
			end

			TOKEN_CHK_ENP: begin
				next_state = TOKEN_ENP_ERR;
				if (data_rx[7:4] == ENP)
					next_state = TOKEN_WAIT_CRC;
			end

			TOKEN_ENP_ERR: begin
				next_state = SEND_NACK;
			end

			TOKEN_WAIT_CRC: begin
				if (byte_rcvd) 
					next_state = TOKEN_CHK_EOP;
			end

			TOKEN_CHK_CRC: begin
				next_state = TOKEN_CRC_ERR;
				if (crc_status_5)
					next_state = SEND_PCKT;
			end

			TOKEN_CHK_EOP: begin
				if (eop)
					next_state = TOKEN_CHK_CRC;
			end

			TOKEN_CRC_ERR: begin
				next_state = SEND_NACK;
			end
		
			DATA_WAIT_DATA: begin
				if (fifo_full)
					next_state = DATA_WAIT_EOP;
				else if (byte_rcvd)
					next_state = DATA_DATA_RCV;
			end

			DATA_DATA_RCV: begin
				if (!fifo_full)
					next_state = DATA_WAIT_DATA;
				else if (fifo_full)
					next_state = DATA_WAIT_EOP;
			end

			DATA_WAIT_EOP: begin
				if (eop)
					next_state = DATA_CHK_CRC;	
			end

			DATA_CHK_CRC: begin
				next_state = DATA_CRC_ERR;
				if (crc_status_16)
					next_state = SD_READ;
			end

			SD_READ: begin
				if (read_done)				
					next_state = SEND_PCKT;
			end

			DATA_CRC_ERR: begin
				next_state = SEND_NACK;
			end

			ACK_CHK_EOP: begin
				if (eop)
					next_state = IDLE;
			end

			SEND_NACK: begin
				next_state = EMPTY_FIFO;
			end

			EMPTY_FIFO: begin
				if (fifo_empty)
					next_state = EIDLE;
			end

			EIDLE: begin
				if (rx_en) 
					next_state = WAIT_SYNC ;
			end
		
			SEND_PCKT: begin
				if (ack_packet_rcv)
					next_state = IDLE;	
			end

		endcase
	end

	always_comb begin
		count_up = 1 ;
		clear = 0 ;
		rcving = 1 ;
		dbuff_clr = 0 ;
		fill_dbuff = 0;
		rcvd_exp_hs = 0 ;
		send_nack = 0 ;
		addr_dne = 0 ;
		sd_rx_en_read = 0 ;
		temp_pckt = temp_pckt;
		pckt_rcvd = pckt_rcvd;
		case (curr_state)
			SEND_PCKT: begin
				rcving = 0;
				pckt_rcvd = temp_pckt;
			end
			
			IDLE: begin
				rcving = 0;
				count_up = 0;
				pckt_rcvd = 0;
				clear = 1;
			end

			ACK_PID_RCV: begin
				temp_pckt = 2'b00;
			end

			NACK_PID_RCV: begin
				temp_pckt = 2'b00;
			end

			CHK_PID: begin
				clear = 1;
			end

			CHK_SYNC: begin
				clear = 1;
			end
	
			TOKEN_CHK_CRC: begin
				clear = 1;
			end

			TOKEN_CHK_ENP: begin
				clear = 1;
			end

			TOKEN_CHK_ADDRESS: begin
				clear = 1;
			end

			IN_PID_RCV: begin
				temp_pckt = 2'b01;
			end

			OUT_PID_RCV: begin
				temp_pckt = 2'b10;
			end

			DATA_PID_RCV: begin
				temp_pckt = 2'b11;
			end

			TOKEN_ADDR_DNE: begin
				dbuff_clr = 1;
				addr_dne = 1;
			end	
		
			DATA_WAIT_DATA: begin
				count_up = 1;
			end

			DATA_DATA_RCV: begin
				fill_dbuff = 1;
				clear = 1;
			end

			ACK_CHK_EOP: begin
				rcvd_exp_hs = 1;
			end

			SEND_NACK: begin
				send_nack = 1;
			end

			EMPTY_FIFO: begin
				dbuff_clr = 1;
			end				

			SD_READ: begin
				sd_rx_en_read = 1;
			end

		endcase
	end


endmodule


