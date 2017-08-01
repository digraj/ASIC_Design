// $Id: $
// File name:   flex_counter.sv
// Created:     1/30/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Flexible counter


module flex_counter 
#(
	parameter NUM_CNT_BITS = 4
)
(
	input wire clk,
	input wire n_rst,
	input wire clear,
	input wire count_enable,
	input wire [NUM_CNT_BITS-1:0] rollover_val,
	output wire [NUM_CNT_BITS-1:0] count_out,
	output reg rollover_flag
);

reg [NUM_CNT_BITS-1:0] current;
reg [NUM_CNT_BITS-1:0] next;
reg nextr;

always_comb
begin
	nextr = rollover_flag;
	next = current;
	/*if (n_rst == 1'b0)
	begin
		next = '0;
	end
	else*/
	if (clear == 1'b1)
	begin 
		nextr = 1'b0;
		next = 1'b0;
	end
	else if (count_enable == 1'b1)
	begin
		
		nextr = 1'b0; 
		if (current == rollover_val - 1)
		begin
			nextr = 1'b1;
		end
		 
		if (current == rollover_val)
		begin
			next = 1'b1;
		end
		else 
		begin 
			next = current + 1; 
		end
		
	end
	else 
	begin
		next = current;
		if (current == rollover_val)
		begin
			nextr = 1'b1;
		end
		else 
		begin
			nextr = 1'b0;
		end
	end
	if (rollover_val == 1 )
	begin
		nextr = 1'b1;
	end
end 

always_ff @ (posedge clk, negedge n_rst )
begin 
	if (n_rst == 1'b0)
	begin
		rollover_flag <= 1'b0;
	end
	else 
	begin
		rollover_flag <= nextr;
	end		
end


always_ff @ (posedge clk, negedge n_rst )
begin 
	if (n_rst == 1'b0)
	begin
		current <= '0;
	end
	else 
	begin
		current <= next;
	end		
end

assign count_out = current;
endmodule 