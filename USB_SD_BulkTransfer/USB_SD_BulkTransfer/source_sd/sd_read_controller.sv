// $Id: $
// File name:   sd_read_controller.sv
// Created:     4/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: This controller is for the read interface of the SD Card

module sd_read_controller
(
	input wire clk,
	input wire n_rst,
	input wire rising_edge_sclk,
	input wire [7:0] sd_rsp_msg,
	input wire read_enable, //write signal to the main controller  

	//NEW 
	input wire fifo_full,
	output reg read_write_fifo,

	output reg [47:0] read_command, 
	output reg read_CS,
	output reg read_load_command,
	output reg read_shift_command,
	output reg read_shift_read,
	output reg read_status 
);

typedef enum bit [3:0] { SEND_CMD_16, CLEAR1, RECIEVE1, CLEAR2, SEND_CMD_17, CLEAR3, RECIEVE2, CLEAR4, READ_DATA, CLEAR5, SEND_CMD_12, CLEAR6, RECIEVE3, COMPLETE, IDLE } stateType;

stateType current;
stateType next;
reg clear;
reg [6:0] count;
reg rollover_flag;

flex_counter #(7) READ_CNTR ( .clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(rising_edge_sclk), .rollover_val(7'd100), .count_out(count), .rollover_flag(rollover_flag));

always_ff @ (posedge clk, negedge n_rst)
begin
	if( n_rst == 1'b0)
        begin
		current <= IDLE;	
	end
	else
	begin	
		current <= next;
	end
end

//NEXT STATE LOGIC 
always_comb 
begin
	next = current;
	case(current)
	
	IDLE:
		begin
			if((read_enable == 1'b1) && (rising_edge_sclk == 1'b1))
			begin
				next = SEND_CMD_16;
			end
		end
	SEND_CMD_16:
		begin
			if (count == 7'd48) 
			begin
				next = CLEAR1;
			end
		end
	CLEAR1:
		begin 
			next = RECIEVE1;
		end
	RECIEVE1:
		begin
			if ((count == 7'd8) && (sd_rsp_msg == 8'b00000000))
			begin
				next = CLEAR2;
			end
			else if (count == 7'd8)
			begin
				next = IDLE;
			end
		end
	CLEAR2:
		begin
			next = SEND_CMD_17;
		end
	SEND_CMD_17:
		begin
			if (count == 7'd48) 
			begin
				next = CLEAR3;
			end
		end
	CLEAR3:
		begin 
			next = RECIEVE2;
		end
	RECIEVE2:
		begin
			if ((count == 7'd8) && (sd_rsp_msg == 8'b00000000))
			begin
				next = CLEAR4;
			end
			else if (count == 7'd8)
			begin
				next = CLEAR2;
			end		
		end
	CLEAR4:
		begin
			next = READ_DATA;
		end
	READ_DATA:
		begin
			if (fifo_full == 1'b1)
			begin 
				next = CLEAR5;
			end
		end
	CLEAR5:
		begin
			next = SEND_CMD_12;
		end
	SEND_CMD_12:
		begin
			if (count == 7'd48)
			begin
				next = CLEAR6;
			end
		end
	CLEAR6:
		begin
			next = RECIEVE3;
		end
	RECIEVE3:
		begin
			if ((count == 7'd8) && (sd_rsp_msg == 8'b11111111))
			begin
				next = COMPLETE;
			end
			else if (count == 7'd8)
			begin
				next = CLEAR5;
			end
		end
	COMPLETE:
		begin 
			if (read_enable == 1'b1)
			begin
				next = IDLE;
			end
		end


	endcase;

end

//OUTPUT LOGIC 
always_comb 
begin
	//main outputs
	read_status = 1'b0;
	read_command = 48'b0;
	read_load_command = 1'b0;
	read_shift_command = 1'b0;
	read_CS = 1'b1;
	read_shift_read = 1'b0;

	//counter
	clear = 1'b0;
	
	//fifo
	read_write_fifo = 1'b0;

	case(current)
	
	IDLE:
		begin
			clear = 1'b1;
			read_load_command = 1'b1;
			read_command = 48'h500000000055;
		end
	SEND_CMD_16:
		begin
			read_shift_command = 1'b1;
		end
	CLEAR1:
		begin 
			clear = 1'b1;
		end
	RECIEVE1:
		begin
			read_shift_read = 1'b1;
		end
	CLEAR2:
		begin
			clear = 1'b1;
			read_load_command = 1'b1;
			read_command = 48'h510000000095;
		end
	SEND_CMD_17:
		begin
			read_shift_command = 1'b1;
		end
	CLEAR3:
		begin 
			clear = 1'b1;
		end
	RECIEVE2:
		begin
			read_shift_read = 1'b1;
		end
	CLEAR4:
		begin
			clear = 1'b1;	
		end
	READ_DATA:
		begin
			read_shift_read = 1'b1;
			if (count == 7'd8)
			begin
				clear = 1'b1;
				read_write_fifo = 1'b1;
			end
		end
	CLEAR5:
		begin
			clear = 1'b1;
			read_load_command = 1'b1;
			read_command = 48'hFD0000000000;
		end
	SEND_CMD_12:
		begin
			read_shift_command = 1'b1;
		end
	CLEAR6:
		begin
			clear = 1'b1;
		end
	RECIEVE3:
		begin
			read_shift_read = 1'b1;
		end
	COMPLETE:
		begin 
			read_status = 1'b1;
		end
	endcase;
end

endmodule 