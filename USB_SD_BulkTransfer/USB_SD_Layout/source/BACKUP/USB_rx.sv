// $Id: $
// File name:   USB_rx.sv
// Created:     4/22/2017
// Author:      Pujitha Desiraju
// Lab Section: 337-05
// Version:     1.0  Initial Design Entry
// Description: Top level module file for USB Receiver
module USB_rx	(
	input wire 		clk,				//done
				n_rst,				//done
				d_plus, 			//done
				d_minus,			//done				
				read_done,			//done	
				rx_en,				//done
				hs_rcv,				//done
				crc_status,
				fifo_empty,			//done
				fifo_full,			//done
				ack_packet_rcv,
	output wire 		rcving,				//done
				send_nack,			//done
				rcvd_exp_hs,			//done
				sd_rx_en_read,			//done
				addr_dne,			//done
				dbuff_clr,
				fill_dbuff,
	output wire	[7:0] 	data,
	output wire 	[1:0]	pckt_rcvd			//done
);


	reg 	eop,
		d_orig,
		bit_rcvd,
		byte_rcvd,
		pause,
		clear,
		cnt_up;


	serial_2_parallel STP	(
		 	.clk,
			.n_rst,
			.shift_enable(bit_rcvd),
			.pause,
			.serial_in(d_orig),
			.parallel_out(data)
	);

	nrzi_decode DEC (
		 	.clk, 
			.n_rst,
			.d_plus,
			.d_minus,
			.bit_rcvd,			
			.d_orig,
			.eop
	);

	bit_destuff BIT_DE	(
			.clk,
			.n_rst,
			.bit_rcvd,
			.d_orig,
			.pause
	);


	counter CNT	(
			.clk,
			.n_rst,
			.cnt_up,
			.pause,
			.clear,
			.d_plus,
			.byte_rcvd,
			.bit_rcvd
	);

	usb_rcv_controller RCU (
			.clk(clk),
			.n_rst(n_rst),	
			.rx_en(rx_en),
			.eop(eop),
			.byte_rcvd(byte_rcvd),
			.crc_status_5(crc_status),
			.crc_status_16(crc_status),
			.hs_rcv(hs_rcv),
			.fifo_empty(fifo_empty),
			.fifo_full(fifo_full),	
			.read_done(read_done),		
			.data_rx(data),
			.rcving(rcving),
			.dbuff_clr(dbuff_clr),
			.rcvd_exp_hs(rcvd_exp_hs),
			.send_nack(send_nack),
			.addr_dne(addr_dne),
			.fill_dbuff(fill_dbuff),
			.sd_rx_en_read(sd_rx_en_read),
			.pckt_rcvd(pckt_rcvd),
			.clear(clear),
			.count_up(cnt_up),
			.ack_packet_rcv
	) ;


endmodule
