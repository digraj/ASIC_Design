// $Id: $
// File name:   flex_stp_sr.sv
// Created:     1/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: flex-stp_sr


module flex_stp_sr 
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1
)
(
	input wire clk,
	input wire n_rst,
	input wire shift_enable,
	input wire serial_in,
	output reg [(NUM_BITS-1):0] parallel_out
);
	//reg [(NUM_BITS-1):0] current;
	reg [(NUM_BITS-1):0] next;

	always_comb
	begin 
		if(shift_enable == 1'b1)
		begin 
			if(SHIFT_MSB == 1)
			begin
				next = {parallel_out[NUM_BITS-2:0],serial_in};
			end 
			else 
			begin
				next = {serial_in,parallel_out[NUM_BITS-1:1]}; 
			end
		end
		else
		begin
			next = parallel_out[NUM_BITS-1:0];
		end
	end
	
	always_ff @ (posedge clk, negedge n_rst)
	begin 
		if(1'b0 == n_rst)
		begin 
			parallel_out <= '1;
		end
		else
		begin
			parallel_out <= next;
		end
	end
endmodule 