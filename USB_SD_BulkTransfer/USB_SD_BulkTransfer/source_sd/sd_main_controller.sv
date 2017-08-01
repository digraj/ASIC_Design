// $Id: $
// File name:   sd_main_controller.sv
// Created:     4/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: This is the main controller of the SD Card

module sd_main_controller
(
	input wire clk,
	input wire n_rst,
	input wire write,
	input wire read,
	input wire rising_edge_sclk,
	input wire [7:0] sd_rsp_msg,
	//NEW SIGNALS 
	input wire fifo_empty,
	input wire fifo_full,
	output reg read_fifo,
	output reg write_fifo,
	//
	output reg CS,
	output wire spi_init_done,
	output wire write_done,
	output wire read_done,
	output reg [47:0] command,
	output reg divider,
	output reg load_command,
	output reg load_data, 
	output reg shift_data, 
	output reg shift_command,
	output reg shift_read
);



typedef enum bit [2:0] {SPI, WRITE, READ, IDLE} stateType;
stateType current;
stateType next;

// write controller
reg write_status;
reg [47:0] write_command;
reg write_CS;
reg write_load_command;
reg write_load_data; 
reg write_shift_data;
reg write_shift_command;
reg write_shift_read;
//NEW
reg write_read_fifo;
reg write_enable;

//read controller 
reg read_status;
reg [47:0] read_command;
reg read_CS;
reg read_load_command;
reg read_shift_command;
reg read_shift_read;
//NEW
reg read_write_fifo;
reg read_enable;
// spi initialization controller 
reg spi_status;
reg [47:0] spi_command;
reg spi_CS;
reg spi_load_command;
reg spi_shift_command;
reg spi_shift_read;

always_ff @ (posedge clk, negedge n_rst)
begin
	if( n_rst == 1'b0)
        begin
		current <= SPI;	
	end
	else
	begin	
		current <= next;
	end
end

//NEXT STATE LOGIC 
always_comb
begin
	next = current;
		
	case(current)
	SPI:
		begin 
			if (spi_status == 1'b1)
			begin
				next = IDLE;
			end
		end

	IDLE: 
		begin
			if (write == 1'b1)
			begin 
				next = WRITE;
			end
			else if(read == 1'b1)
			begin 	
				next = READ;
			end
			else 
			begin 
				next = IDLE;
			end
 
		end
	WRITE:
		begin 
			if (write_status == 1'b1)
			begin 
				next = IDLE;
			end
			else 
			begin 
				next = WRITE;
			end

		end

	READ:
		begin 
			if (read_status == 1'b1)
			begin 
				next = IDLE;
			end
			else 
			begin 
				next = READ;
			end

		end
	
	
	endcase;


end


//OUTPUT LOGIC
always_comb
begin
	
	divider = 1'b0;
	command = 47'b0;
	CS = 1'b1;
	load_command = 1'b0;
	shift_command = 1'b0;
	load_data = 1'b0;
	shift_data = 1'b0;
	shift_read = 1'b0;
	read_fifo = 1'b0;
	write_fifo = 1'b0;
	write_enable = 1'b0;
	read_enable = 1'b0;

	case(current)
	SPI:
		begin 
			divider = 1'b1;
			command = spi_command;
			CS = spi_CS;
			load_command = spi_load_command;
			shift_command = spi_shift_command;
			shift_read = spi_shift_read;
		end

	IDLE: 
		begin
		
		end
	WRITE:
		begin 
			write_enable = 1'b1;			
			command = write_command;
			CS = write_CS;
			load_command = write_load_command;
			load_data = write_load_data;	
			shift_data = write_shift_data;
			shift_command = write_shift_command;
			shift_read = write_shift_read;
			read_fifo = write_read_fifo;
		end

	READ:
		begin 
			read_enable = 1'b1;
		 	command = read_command;	
			CS = read_CS;
			load_command = read_load_command;
			shift_command = read_shift_command;
			shift_read = read_shift_read;
			write_fifo = read_write_fifo;
		end
	
	
	endcase;


end


assign write_done = write_status;
assign read_done = read_status;
assign spi_init_done = spi_status;

//instantiate modules 
sd_write_controller C1 ( .clk(clk), .n_rst(n_rst), .rising_edge_sclk(rising_edge_sclk), .sd_rsp_msg(sd_rsp_msg), .write_enable(write_enable), .write_command(write_command), .write_CS(write_CS), .write_load_command(write_load_command), .write_shift_command(write_shift_command), .write_shift_read(write_shift_read), .write_status(write_status), .write_load_data(write_load_data), .write_shift_data(write_shift_data), .write_read_fifo(write_read_fifo), .fifo_empty(fifo_empty));
sd_read_controller C2 ( .clk(clk), .n_rst(n_rst), .rising_edge_sclk(rising_edge_sclk), .sd_rsp_msg(sd_rsp_msg), .read_enable(read_enable), .read_command(read_command), .read_CS(read_CS), .read_load_command(read_load_command), .read_shift_command(read_shift_command), .read_status(read_status), .read_shift_read(read_shift_read), .read_write_fifo(read_write_fifo), .fifo_full(fifo_full));
sd_initialization_controller C3 ( .clk(clk), .n_rst(n_rst), .rising_edge_sclk(rising_edge_sclk), .sd_rsp_msg(sd_rsp_msg), .spi_command(spi_command), .spi_CS(spi_CS), .spi_load_command(spi_load_command), .spi_shift_command(spi_shift_command), .spi_status(spi_status),  .spi_shift_read(spi_shift_read));

endmodule
