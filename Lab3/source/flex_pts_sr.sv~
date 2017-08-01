// $Id: $
// File name:   flex_pts_sr.sv
// Created:     1/26/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: parallel to serial shift register

module flex_pts_sr
#(
	parameter	NUM_BITS = 4,
			SHIFT_MSB = 1
)
(
	input wire 	clk,
			n_rst,
			shift_enable,
			load_enable,
	input wire	[NUM_BITS-1:0]parallel_in, 
	output wire	serial_out 
);

	reg [NUM_BITS-1:0]current_output ;
	reg [NUM_BITS-1:0]next_output ;

	always_comb
	begin
		if (load_enable == 1'b1)
		begin
			current_output = parallel_in ;						
		end
		else 
		begin
			if (shift_enable == 1'b0) 
			begin
				current_output = next_output ;
			end
			else 
			begin
				if (SHIFT_MSB == 1'b1) 
				begin
					current_output = {next_output[NUM_BITS-2:0], 1'b1} ;  
				end
				else
				begin
					current_output = {1'b1, next_output[NUM_BITS-1:1]} ; ;
				end	
			end		
		end
	end

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0)
		begin
			next_output <= '1 ;	
		end
		else 
		begin
			next_output <= current_output ;
				
		end
	end	

	if (SHIFT_MSB == 1'b1) 
	begin
		assign serial_out = next_output[NUM_BITS-1] ;
	end
	else
	begin
		assign serial_out = next_output[0] ;
	end	

endmodule	
