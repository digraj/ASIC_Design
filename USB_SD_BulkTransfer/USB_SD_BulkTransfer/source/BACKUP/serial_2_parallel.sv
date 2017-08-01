// $Id: $
// File name:   flex_stp_sr.sv
// Created:     1/26/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: serial to parallel shift register

module serial_2_parallel 
#(
	parameter 	NUM_BITS = 8,
			SHIFT_MSB = 1 
)
(
	input wire 	clk,
			n_rst,
			shift_enable,
			pause,
			serial_in, 
	output reg	[NUM_BITS-1:0] parallel_out
);

	reg [NUM_BITS-1:0]mid_output ;
	
	always_comb
	begin
		mid_output = parallel_out;
		if ((shift_enable == 1'b0) | (pause == 1))
		begin
			mid_output = parallel_out ;
		end
		else if ((shift_enable == 1'b1) & (pause != 1))
		begin
			if (SHIFT_MSB == 1'b1) 
			begin
				mid_output = {parallel_out[NUM_BITS-2:0], serial_in} ;
			end
			else 
			begin
				mid_output = {serial_in, parallel_out[NUM_BITS-1:1]} ;
			end		
		end
	end

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0)
		begin
			parallel_out <= '1 ;	
		end
		else 
		begin
			parallel_out <= mid_output ;
		end
	end

endmodule
