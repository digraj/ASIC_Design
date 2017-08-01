// $Id: $
// File name:   crc_16_checker.sv
// Created:     4/20/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: CRC 16 checker 

module crc_16_checker
#(
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire serial_in,
    output wire [15:0] parallel_out
);

	reg [15:0] out_tmp;
	reg [15:0] in_tmp;
	reg inv;

	assign inv = serial_in ^ out_tmp[15];

    always_comb begin 
        if(!shift_enable) begin
            in_tmp = out_tmp;

        end else if (shift_enable) begin
            if(SHIFT_MSB == 1) begin
		in_tmp   = {inv ^ out_tmp[14], out_tmp[13:12], out_tmp[11] ^ inv, out_tmp[10:5], out_tmp[4] ^ inv, out_tmp[3:0], inv};

            end else begin
                //Add in control for bit unstuff signal
                //in_tmp = {serial_in, out_tmp[NUM_BITS-1:1]};
            end

        end else begin
            in_tmp = out_tmp;
        end 
    end

    always_ff @ (posedge clk, negedge n_rst) begin
        if(n_rst == 0) begin
            out_tmp <= '0;

        end else begin
            out_tmp <= in_tmp;                
        end
    end

    assign parallel_out = out_tmp;

endmodule

/*
    always_comb begin 
        if(!shift_enable) begin
            in_tmp = out_tmp;

        end else if (shift_enable) begin
            if(SHIFT_MSB == 1) begin
                in_tmp   = {out_tmp[15]^out_tmp[14], out_tmp[13:11],out_tmp[15]^out_tmp[10],out_tmp[9:4],out_tmp[15] ^ out_tmp[3], out_tmp[2:0], serial_in ^ out_tmp[15]};

            end else begin
                //Add in control for bit unstuff signal
                //in_tmp = {serial_in, out_tmp[NUM_BITS-1:1]};
            end

        end else begin
            in_tmp = out_tmp;
        end 
    end

    always_ff @ (posedge clk, negedge n_rst) begin
        if(n_rst == 0) begin
            out_tmp <= '0;

        end else begin
            out_tmp <= in_tmp;                
        end
    end

    assign parallel_out = out_tmp;

endmodule
*/

/*
module crc_16_checker (
	input wire 		clk,
				n_rst,
				eop,
				ena,
				data_in, 
	output reg	[15:0]	crc_out
);

reg [15:0] temp_out = '1;
reg [15:0] temp_in ; 

always_ff @(posedge clk, negedge n_rst)
begin
	if (n_rst == 1'b0)
		crc_out <= '1 ; 
	else
		crc_out <= temp_in ;
end

always_comb
begin
	if(eop)
 		temp_in = temp_out ; 

	else if (ena)
		temp_in = { temp_out[14] ^ temp_out[15], temp_out[13:2], temp_out[15] ^ temp_out[1], temp_out[0], temp_out[15] ^ data_in } ; 

	else 
		temp_in = '1;  
end

endmodule
*/
