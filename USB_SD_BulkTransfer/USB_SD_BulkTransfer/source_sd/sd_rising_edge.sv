// $Id: $
// File name:   sd_rising_edge.sv
// Created:     4/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Rising edge of the sclk of the SD Card

module sd_rising_edge
(
	input wire clk,
	input wire sclk, 
	input wire n_rst,
	output reg rising_edge_sclk //falling edge 
);

	reg curr;
	reg prev;

	always_ff @(posedge clk, negedge n_rst)
	begin 
		if (n_rst == 1'b0)
		begin
			curr <= 1'b1;
			prev <= 1'b1; 
		end
		else 
		begin 
			curr <= sclk;
			prev <= curr;
		end
	end

	always_comb
	begin 
		rising_edge_sclk = 1'b0;
		if ( curr == 1'b0 && prev == 1'b1 )
		begin
			rising_edge_sclk = 1'b1;
		end
	end

endmodule
