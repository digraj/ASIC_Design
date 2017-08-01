// $Id: $
// File name:   timer_tx.sv
// Created:     4/21/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Timer for Transmitter

module timer_tx (
	input wire	clk,
			n_rst,
			load_enable,		
	output reg	shift_enable
) ;
	
	always_ff @ (posedge clk, negedge n_rst) begin
		if (n_rst)
			shift_enable <= 0;
		else
			shift_enable <= !load_enable;
	end

endmodule
