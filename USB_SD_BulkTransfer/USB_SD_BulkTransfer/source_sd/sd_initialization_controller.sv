// $Id: $
// File name:   sd_initialization_controller.sv
// Created:     4/21/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: This controller is a sub controller that makes the SD card function in SPI mode

module sd_initialization_controller
(
	input wire clk,
	input wire n_rst,
	input wire rising_edge_sclk,
	input wire [7:0] sd_rsp_msg, 
	output reg [47:0] spi_command, 
	output reg spi_CS,
	output reg spi_load_command,
	output reg spi_shift_command,
	output reg spi_shift_read,
	output reg spi_status 
);




typedef enum bit [3:0] { WAIT1, CLEAR1, SEND_CMD_0, CLEAR2, RECIEVE1, CLEAR3, SEND_CMD_55, CLEAR4, RECIEVE2, CLEAR5, SEND_CMD_41, CLEAR6, RECIEVE3, COMPLETE, IDLE } stateType;

stateType current;
stateType next;
reg clear;
reg [6:0] count;
reg rollover_flag;


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
			next = WAIT1;
		end
	WAIT1:
		begin
			if (count == 7'd74) 
			begin
				next = CLEAR1;
			end
		end
	CLEAR1:
		begin 
			next = SEND_CMD_0;
		end
	SEND_CMD_0:
		begin 
			if (count == 7'd48)
			begin 
				next = CLEAR2;
			end
		end
	CLEAR2:
		begin
			next = RECIEVE1;
		end
	RECIEVE1:
		begin
			if ((count == 7'd8) && (sd_rsp_msg == 8'b00000001))
			begin
				next = CLEAR3;
			end
			else if (count == 7'd8)
			begin
				next = CLEAR1;
			end
		end
	CLEAR3:
		begin 
			next = SEND_CMD_55;
		end
	SEND_CMD_55:
		begin
			if (count == 7'd48)
			begin 
				next = CLEAR4;
			end
		end
	CLEAR4:
		begin
			next = RECIEVE2;
		end
	RECIEVE2:
		begin
			if ((count == 7'd8) && (sd_rsp_msg == 8'b00000001))
			begin
				next = CLEAR5;
			end
			else if (count == 7'd8)
			begin
				next = CLEAR3;
			end
		end
	CLEAR5:
		begin
			next = SEND_CMD_41;
		end
	SEND_CMD_41:
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
			if ((count == 7'd8) && (sd_rsp_msg == 8'b00000000))
			begin
				next = COMPLETE;
			end
			else if (count == 7'd8)
			begin
				next = CLEAR3;
			end
		end
	COMPLETE:
		begin 
			
		end


	endcase;



end

//OUTPUT LOGIC 
always_comb 
begin
	//main outputs
	spi_status = 1'b0;
	spi_command = 48'b0;
	spi_load_command = 1'b0;
	spi_shift_command = 1'b0;
	spi_CS = 1'b1;
	spi_shift_read = 1'b0;
	//counter
	clear = 1'b0;

	case(current)
	
	IDLE:
		begin
			clear = 1'b1;	
		end
	WAIT1:
		begin

		end
	CLEAR1:
		begin 
			clear = 1'b1;
			spi_load_command = 1'b1;
			spi_command = 48'h400000000095;
		end
	SEND_CMD_0:
		begin 
			spi_CS = 1'b0;
			spi_shift_command = 1'b1;
		end
	CLEAR2:
		begin
			clear = 1'b1;
		end
	RECIEVE1:
		begin
			spi_shift_read = 1'b1;
		end
	CLEAR3:
		begin 
			clear = 1'b1;
			spi_load_command = 1'b1;
			spi_command = 48'h770000000065;		
		end
	SEND_CMD_55:
		begin
			spi_shift_command = 1'b1;
		end
	CLEAR4:
		begin
			clear = 1'b1;
		end
	RECIEVE2:
		begin
			spi_shift_read = 1'b1;
		end
	CLEAR5:
		begin
			clear = 1'b1;
			spi_load_command = 1'b1;
			spi_command = 48'h69001000005F;		
		end
	SEND_CMD_41:
		begin
			spi_shift_command = 1'b1;
		end
	CLEAR6:
		begin
			clear = 1'b1;
		end
	RECIEVE3:
		begin
			spi_shift_read = 1'b1;
		end
	COMPLETE:
		begin 
			spi_status = 1'b1;
		end


	endcase;



end



flex_counter #(7) CNT1 ( .clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(rising_edge_sclk), .rollover_val(7'd100), .count_out(count), .rollover_flag(rollover_flag));

endmodule 