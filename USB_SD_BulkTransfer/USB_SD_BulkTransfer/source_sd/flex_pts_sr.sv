// $Id: $
// File name:   flex_ptd_sr.sv
// Created:     1/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Pts sr stuff

module flex_pts_sr 
#(
	parameter NUM_BITS = 4,
	parameter SHIFT_MSB = 1
)
(
	input wire clk,
	input wire n_rst,
	input wire shift_enable,
	input wire load_enable,
	input wire [(NUM_BITS-1):0] parallel_in,
	output wire serial_out
);
	reg [(NUM_BITS-1):0] current;
	reg [(NUM_BITS-1):0] next;
	//reg next_bit; 

	always_comb
	begin 
		if(load_enable == 1'b0)	
		begin
			if(shift_enable == 1'b1)
			begin 
				if(SHIFT_MSB == 0)
				begin
					//next_bit = next[0];
					next = {1'b1,current[NUM_BITS-1:1]};
				end 
				else 
				begin
					//next_bit = next[NUM_BITS-1];
					next = {current[NUM_BITS-2:0],1'b1}; 
				end
			end
			else
			begin
				next = current;
				//next_bit=next_bit;
			end
		end
		else 
		begin 
			next = parallel_in;
			//next_bit=next_bit;
		end
	end
	
	always_ff @ (posedge clk, negedge n_rst)
	begin 
		if(1'b0 == n_rst)
		begin 
			current <= '1;
		end
		else
		begin
			current <= next;				
		end
	end
	if (SHIFT_MSB == 1)
	begin 
		assign serial_out = current[NUM_BITS-1];
	end
	else 
	begin
		assign serial_out = current[0];
	end
	


endmodule 