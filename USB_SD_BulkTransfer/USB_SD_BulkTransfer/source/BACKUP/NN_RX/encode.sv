// $Id: $
// File name:   encode.sv
// Created:     4/18/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: NRZi Encoder

module nrzi_decode (
	input wire 	clk, 
			n_rst,
			d_orig,
			eop, 
	output reg	d_plus,
			d_minus
);

reg 	temp_d_plus,
	temp_d_minus,
	next_d_orig,
	prev_d_plus, 
	curr_d_plus; 

always_ff @(posedge clk, negedge n_rst)
begin
	if(n_rst == 1'b0) 
	begin	
		d_plus <= 1'bz; 
		d_minus <= 1'bz; 
		prev_d_plus <= 1'b0; 
	end else begin
		d_plus <= temp_d_plus; 
		d_minus <= temp_d_minus; 		
		prev_d_plus <= curr_d_plus ; 
	end

end

always_comb begin

	if (d_orig == 1'b1)
		curr_d_plus = !prev_d_plus ; 
	else
		curr_d_plus = prev_d_plus ;
end

always_comb begin

	if (eop == 1'b1)
	begin
			temp_d_plus = 0;
			temp_d_minus = 0;
	end

	else
	begin
		temp_d_plus = curr_d_plus ;
		temp_d_minus = !(temp_d_plus);
	end

end
endmodule
