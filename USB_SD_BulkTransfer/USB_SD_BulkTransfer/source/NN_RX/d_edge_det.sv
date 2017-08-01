// $Id: $
// File name:   scl_edge.sv
// Created:     2/21/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: SCL Edge 

module d_edge_det (
	input wire	clk,
			n_rst,
			d_plus,
	output reg	falling_edge
) ;

	reg first_bit, second_bit ;

	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0)
			second_bit <= 1 ;
		else
			second_bit <= d_plus ;
	end
			
	always_ff @ (posedge clk, negedge n_rst)
	begin
		if (n_rst == 1'b0)
			first_bit <= 1 ;
		else
			first_bit <= second_bit ;
	end

	always_comb begin
		falling_edge = (first_bit & ~second_bit) ;
	end

endmodule
