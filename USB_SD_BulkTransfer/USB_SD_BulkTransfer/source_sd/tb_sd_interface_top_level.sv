// $Id: $
// File name:   tb_sd_interface_top_level.sv
// Created:     4/26/2017
// Author:      Pushkal B. Vaid
// Lab Section: 5
// Version:     1.0  Initial Design Entry
// Description: This is the Test Bench for the SD Card Interface


`timescale 1ns / 10ps

module tb_sd_interface_top_level();
	
	localparam CLK_PERIOD = 10.42;
	
	reg tb_clk;
	reg tb_n_rst;
	reg tb_write;
	reg tb_read;
	reg [7:0] tb_write_data;
	reg tb_MISO;
	reg [7:0] tb_read_data;
	reg tb_write_done;	
	reg tb_read_done;
	reg tb_spi_init_done;
	reg tb_CS;
	reg tb_sclk;
	reg tb_MOSI;
	reg tb_fifo_empty;
	reg tb_fifo_full;
	reg tb_read_fifo;
	reg tb_write_fifo;

	integer i;
	integer j;
	reg [47:0] tb_command;
	reg [7:0] tb_response;
	reg [63:0] tb_hold_data;
	
	always
	begin
		tb_clk = 1'b0;
		#(CLK_PERIOD/2.0);
		tb_clk = 1'b1;
		#(CLK_PERIOD/2.0);
	end


	sd_interface_top_level DUT 
	(
		.clk(tb_clk),
		.n_rst(tb_n_rst),
		.write(tb_write),
		.read(tb_read),
		.fifo_empty(tb_fifo_empty),
		.fifo_full(tb_fifo_full),
		.MISO(tb_MISO),

		.write_data(tb_write_data),
		.read_data(tb_read_data),
		.write_done(tb_write_done),	
		.read_done(tb_read_done),
		.spi_init_done(tb_spi_init_done),
		.CS(tb_CS),
		.sclk(tb_sclk),
		.MOSI(tb_MOSI),
		.read_fifo(tb_read_fifo),
		.write_fifo(tb_write_fifo)
	);

	initial
	begin
	
		/*tb_command = 48'h00_00_00;
		tb_response = 8'b0;
		tb_n_rst = 1;
		@(negedge tb_clk)
		tb_n_rst = 0;
		@(negedge tb_clk)
		tb_n_rst = 1;
		tb_read = 0;
		tb_write = 0;
		tb_write_data = 0;
		tb_fifo_empty = 0;
		tb_fifo_full = 0;
		tb_MISO = 0;
	
		@(negedge tb_clk)
		

		for (i = 0; i < 74; i = i + 1)
		begin
			@(negedge tb_sclk);		
		end
		
         	for (i = 0; i < 48; i = i + 1)
		begin
			@(negedge tb_sclk)
			tb_command[47-i] = tb_MOSI;			
		end
		if ( tb_command == 48'h400000000095)
		begin
			$info("CMD_0");
		end
		
		tb_command = 48'h00_00_00;

		//$info("TEST-1 ACHIEVED!!!");
	
		tb_response = 8'b00000001;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(negedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end 
		tb_response = 8'b0;

		//$info("TEST-2 ACHIEVED!!!");
		for (i = 0; i < 48; i = i + 1)
		begin
			@(negedge tb_sclk)
			tb_command[47-i] = tb_MOSI;		
		end
		if ( tb_command == 48'h770000000065)
		begin
			$info("CMD55");
		end	
		tb_command = 48'h00_00_00;
		//$info("TEST-3 ACHIEVED!!!");
		
		tb_response = 8'b00000001;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(negedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end 
		tb_response = 8'b0;
		
		//$info("TEST-4 ACHIEVED!!!");
		for (i = 0; i < 48; i = i + 1)
		begin
			@(negedge tb_sclk)
			tb_command[47-i] = tb_MOSI;		
		end
		if ( tb_command == 48'h69001000005F)
		begin
			$info("CMD41"); 
		end	

		tb_command = 48'h00_00_00;

		//$info("TEST-5 ACHIEVED!!!");

		tb_response = 8'b00000000;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(negedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end 
		tb_response = 8'b0;
		
		$info("TEST-SPI ACHIEVED!!!");

		// spi intialization is done successfully 


		while(1)
		begin
			@(negedge tb_clk)
			if (tb_spi_init_done == 1)
			begin
				break;
			end
		end
		
		@(negedge tb_clk)
		tb_n_rst = 1;
		tb_read = 0;
		tb_write = 0;
		tb_write_data = 0;
		tb_fifo_empty = 0;
		tb_fifo_full = 0;
		tb_MISO = 1;
		
		@(negedge tb_clk)
		tb_write = 1;
		
		@(negedge tb_clk)
		tb_write = 0;
		for (i = 0; i < 48; i = i + 1)
		begin
			@(posedge tb_sclk)	
			tb_command[47-i] = tb_MOSI;	
					
		end
		if ( tb_command == 48'h500000000055)
		begin
			$info("CMD16");;
		end
		tb_command = 48'h00_00_00;
		tb_response = 8'b00000000;

		for (i = 0; i < 8; i = i + 1)
		begin 
			@(posedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end
		@(posedge tb_clk)
		tb_response = 8'b0;
		tb_MISO = 1;

		for (i = 0; i < 48; i = i + 1)
		begin	
			@(negedge tb_sclk)			
			tb_command[47-i] = tb_MOSI;	
				
		end
		if ( tb_command == 48'h580000000095)
		begin
			$info("CMD24");
		end
				
		tb_command = 48'h00_00_00;
		tb_response = 8'b00000000;

		for (i = 0; i < 8; i = i + 1)
		begin 
			@(negedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end 
		tb_response = 8'b0;
		tb_MISO = 1;

		for (i = 0; i < 64; i = i + 1) 
		begin			
			@(posedge tb_clk)
			if (tb_read_fifo == 1)
			begin
				tb_write_data = 8'h99;
			end
		
			@(posedge tb_sclk)
			tb_hold_data[63-i] = tb_MOSI;

		end		
		
		
		tb_fifo_empty = 1'b1;		
		
		if ( tb_hold_data == 64'h9999999999999999 )
		begin
			$info("WRITE_SUCESSFUL");
		end*/

		//TEST 0: INTIALIZE SD CARD TO SPI MODE 
	
		tb_command = 48'h00_00_00;
		tb_hold_data = 64'h0000000000000000;
		tb_response = 8'b0;
		tb_read = 0;
		tb_write = 0;
		tb_fifo_empty = 0;
		tb_fifo_full = 0;
		tb_MISO = 1;
		tb_n_rst = 1;

		@(negedge tb_clk)

		tb_n_rst = 0;

		@(negedge tb_clk)

		tb_n_rst = 1;

		@(negedge tb_clk);
	
		
		for (i = 1; i < 74; i = i + 1)
		begin
			@(posedge tb_sclk);		
		end
		$info("clk 74 done");
		
		@(negedge tb_clk);

		for (i = 0; i < 48; i = i + 1)
		begin
			@(posedge tb_sclk)
			tb_command[47-i] = tb_MOSI;			
		end
		if ( tb_command == 48'h400000000095)
		begin
			$info("CMD_0");
		end
		
		@(negedge tb_clk);

		tb_response = 8'b00000001;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(posedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end

		tb_MISO = 1'b1;
		tb_command = 48'h00_00_00;
		tb_response = 8'b0;

		@(negedge tb_clk);

		for (i = 0; i < 48; i = i + 1)
		begin
			@(posedge tb_sclk)
			tb_command[47-i] = tb_MOSI;		
		end
		if ( tb_command == 48'h770000000065)
		begin
			$info("CMD55");
		end

		@(negedge tb_clk);

		tb_response = 8'b00000001;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(posedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end

		tb_MISO = 1'b1;
		tb_command = 48'h00_00_00;
		tb_response = 8'b0;

		@(negedge tb_clk);


		for (i = 0; i < 48; i = i + 1)
		begin
			@(posedge tb_sclk)
			tb_command[47-i] = tb_MOSI;		
		end
		if ( tb_command == 48'h69001000005F)
		begin
			$info("CMD41"); 
		end
		
		@(negedge tb_clk);

		tb_response = 8'b00000000;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(posedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end

		@(posedge tb_sclk)
		tb_MISO = 1'b1;
		tb_command = 48'h00_00_00;
		tb_response = 8'b0;
		

		if (tb_spi_init_done == 1)
		begin
			$info("TEST 0: INTIALIZE SD CARD TO SPI MODE - PASSED");
		end

		//restart -f; run 1000000 ns

		//TEST 1: WRITE TO SD CARD
		
		@(posedge  tb_sclk);
		@(posedge  tb_sclk);
		@(posedge  tb_sclk)
		tb_hold_data = 64'h0000000000000000;
		tb_write = 0;
		tb_fifo_empty = 0;
		tb_MISO = 1;

		@(negedge tb_clk)
		tb_write = 1;

		@(negedge tb_clk)
		tb_write = 0;

		for (i = 0; i < 48; i = i + 1)
		begin
			@(posedge tb_sclk)
			tb_command[47-i] = tb_MOSI;		
		end
		if ( tb_command == 48'h500000000055)
		begin
			$info("CMD16");
		end
		
		@(negedge tb_clk);

		tb_response = 8'b00000000;
		for (i = 0; i < 8; i = i + 1)
		begin 
			@(posedge tb_sclk)
			tb_MISO = tb_response[7-i];
		end
		
		@(posedge tb_clk);
		tb_MISO = 1'b1;
		tb_command = 48'h00_00_00;
		tb_response = 8'b0;


		for (i = 0; i < 48; i = i + 1)
		begin	
			@(posedge tb_sclk)			
			tb_command[47-i] = tb_MOSI;	
				
		end
		if ( tb_command == 48'h580000000095)
		begin
			$info("CMD24");
		end

	end

endmodule 