// $Id: $
// File name:   crc_16_gen.sv
// Created:     4/18/2017
// Author:      Apoorv Sharma
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: CRC16 Generation Block

module crc_16_gen 
#(
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_enable,
    input wire serial_in,
    input wire clear,
    output reg [7:0] crc_gen_1, 
    output reg [7:0] crc_gen_2
);

	reg [15:0] out_tmp;
	reg [15:0] in_tmp;
	reg inv;
	reg crc_ready;
	reg [2:0] temp;

flex_counter #(7) CRC_16_CNT
(
			.clk(clk),
			.n_rst(n_rst),
			.clear(clear),
			.count_enable(shift_enable),
			.rollover_val(7'b1000000),
			.count_out(temp),
			.rollover_flag(crc_ready)
);

	assign inv = serial_in ^ out_tmp[15];
	//assign inv = serial_in ^ out_tmp[0];

    always_comb begin 
        if(!shift_enable) begin
            in_tmp = out_tmp;

        end else if (shift_enable && !crc_ready) begin
            if(SHIFT_MSB == 1) begin
		//01001000000100001 --> Normal Poly
		in_tmp   = {inv ^ out_tmp[14], out_tmp[13:12], out_tmp[11] ^ inv, out_tmp[10:5], out_tmp[4] ^ inv, out_tmp[3:0], inv};

            end 
	end
	else if (crc_ready) begin
    		crc_gen_1 = out_tmp[7:0];
    		crc_gen_2 = out_tmp[15:8];	
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

    /*assign crc_gen_1 = out_tmp[7:0];
    assign crc_gen_2 = out_tmp[15:8];*/
	

endmodule

/*
module crc_16_gen 
#(
    parameter SHIFT_MSB = 1
)
(
    input wire clk,
    input wire n_rst,
    input wire shift_en,
    input wire serial_in,
    output reg [15:0] parallel_out 
);

    reg [15:0] out_tmp;
    reg [15:0] in_tmp;

    always_comb begin 
        in_tmp = out_tmp;

        if(!shift_en)
            in_tmp = out_tmp;

        else if (shift_en) 
	begin
            if(SHIFT_MSB == 1) 
                in_tmp   = {out_tmp[14] ^ out_tmp[15], out_tmp[13:2], out_tmp[1] ^ out_tmp[15], out_tmp[0], serial_in ^ out_tmp[15]}; //CRC16 generation, with every shift that takes in serial_in 
        end 
    end

    always_ff @ (posedge clk, negedge n_rst) begin
        if(n_rst == 0) begin
            out_tmp <= 16'b1111111111111111;
        end else begin
            out_tmp <= in_tmp;                
        end
    end

    assign parallel_out = out_tmp;

endmodule
*/

/*
module crc_16_gen (
		input wire 		crc16_data,
					crc16_en, 
					clk,
					n_rst, 
		output reg	[15:0]	crc16_out 

); 

reg 		crc_16_0_in, 
		crc_16_2_in, 
		crc_16_15_in;
reg	[15:0]	crc16_o = 15'b111111111111111; 

/*always_ff @(crc16_data || crc16_o || crc_16_0_in) begin
	crc_16_0_in <= (crc16_data ^ crc16_o[15]); 
	crc_16_2_in <= ~(crc_16_0_in ^ crc16_o[1]); 
	crc_16_15_in <= ~(crc_16_0_in ^ crc16_o[14]); 
end 

always @ (crc16_data, crc16_o, crc_16_0_in) begin
	crc_16_0_in <= (crc16_data ^ crc16_o[15]); 
	crc_16_2_in <= ~(crc_16_0_in ^ crc16_o[1]); 
	crc_16_15_in <= ~(crc_16_0_in ^ crc16_o[14]); 
end

always_ff @(posedge clk, negedge n_rst) begin
	if (n_rst == 1'b0)
		crc16_out <= 15'b111111111111111 ; 
	else begin
		if (!crc16_en)
			crc16_out <= crc16_o ; 
		else begin
			crc16_out[15] 	<= crc_16_15_in ; 
			crc16_out[14:3] <= crc16_o[13:2] ; 
			crc16_out[2] 	<= crc_16_2_in ; 
			crc16_out[1] 	<= crc16_o[1] ; 
			crc16_out[0] 	<= crc_16_0_in ; 
			
		end
	end
end

endmodule
*/
