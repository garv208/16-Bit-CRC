`timescale 1ns / 1ps
module CRC_module(Din, Clk, R, Ld, sl,crc
    );
	 input [3:0]Din;
	 input Clk;
	 input R;
	 input Ld, sl;
	 output [15:0] crc;
	 wire [19:0]feed;
	 wire shift_out;
	 wire [15:0] CRC;
	 assign crc = CRC;
	 Mux_2x1 mux(.sl(sl), .a(Din), .b(CRC), .out(feed));
	 LSR_16 lsr(.Din(feed), .Clk(Clk), .Reset(R), .Ld(Ld) , .shift_out(shift_out));
	 LFSR_2 lfsr(.R(R), .Clk(Clk), .input_data(shift_out), .CRC_16(CRC));
endmodule