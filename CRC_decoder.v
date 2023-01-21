`timescale 1ns / 1ps
module CRC_Decoder(input [19:0]Din,
    input Clk,
    input R,
    input Ld,
    output [15:0] crc);
    wire shift_out;
    LSR_16 lsr(.Din(Din), .Clk(Clk), .Reset(R), .Ld(Ld) , .shift_out(shift_out));
    LFSR lfsr(.R(R), .Clk(Clk), .input_data(shift_out), .CRC_16(crc));
endmodule
