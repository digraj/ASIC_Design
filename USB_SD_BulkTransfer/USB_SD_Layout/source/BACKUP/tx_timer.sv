// $Id: $
// File name:   counter.sv
// Created:     4/19/2017
// Author:      Kunwar Digraj Singh Jain
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: Bit and Byte Counter

module tx_timer (
	input wire	clk,
			n_rst,
			pause,
			count_up,
			clear_64, 

	output reg	shift_en,
			byte_rcvd,
			flag_8
);

	reg clear_8;
	reg [3:0] count_up_8, count_up_64;
	

	flex_counter #(4) BIT_TX (.clk(clk), .n_rst(n_rst), .clear(clear_8), .count_enable(count_up), .rollover_val(4'b1000), .rollover_flag(flag_8), .count_out(count_up_8)) ; //assert shift_en for 8 cycles

	flex_counter #(4) BYTE_TX (.clk(clk), .n_rst(n_rst), .clear(clear_64), .count_enable(flag_8), .rollover_val(4'b1000), .rollover_flag(byte_rcvd), .count_out(count_up_64)) ; //wait 8 cycles to compare a bit

	always_comb
	begin	
		shift_en=flag_8	;
		if(pause == 1'b1)
			shift_en = 1'b0;
	end

endmodule
	


/*
	reg clear = 0;
	reg [3:0] count_up_1, 
		count_up_2, count_up_p; 
	reg flag_64 = 0 , flag_pause =0 , flag_8 = 0;
	reg flag_p_start;

	typedef enum reg [2:0] {
		IDLE,
		PAUSE_START
		
	} state_type ;

	state_type	next_state, 
			curr_state ;


	flex_counter #(4) BIT_TX (.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(count_up && !pause), .rollover_val(4'b1000), .rollover_flag(flag_8), .count_out(count_up_1)) ; //assert shift_en for 8 cycles

	flex_counter #(4) BYTE_TX (.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(flag && !pause), .rollover_val(4'b1000), .rollover_flag(flag_64), .count_out(count_up_2)) ; //wait 8 cycles to compare a bit

	flex_counter #(4) PAUSE_COUNT (.clk(clk), .n_rst(n_rst), .clear(clear), .count_enable(flag_p_start), .rollover_val(4'b1000), .rollover_flag(flag_pause), .count_out(count_up_p));
	
	always_comb
	begin
		if (flag_64 && !load_en)
			shift_en = 1;
		else
			shift_en = 0;

		if (!flag_8)
			flag = 1'b1;
		else
			flag = 1'b0;

	end

	always_ff @ (posedge clk, negedge n_rst) begin
		if (n_rst == 1'b0)
			curr_state <= IDLE ;
		else
			curr_state <= next_state ;
	end

	always_comb 
	begin

	next_state = curr_state ;
        pause_8=1'b0;
	case (curr_state)

		IDLE: begin
			if (pause)
			begin
				flag_p_start=1'b1;
				next_state =  PAUSE_START; 
			end
		end
		PAUSE_START: begin
			pause_8=1'b1;
			flag_p_start=1'b1;
			if(flag_pause == 1'b1)
			begin
				flag_p_start=1'b0;
				next_state=IDLE;
			end
		end

	endcase
	end


endmodule
*/

