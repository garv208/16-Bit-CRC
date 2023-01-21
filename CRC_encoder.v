`timescale 1ns / 1ps

module CRC_encoder(input [3:0]Din,
    input Clk,
    input R,
    input Ld,
    output [15:0] crc);
    wire shift_out;
    LSR_1 lsr(.Din(Din), .Clk(Clk), .Reset(R), .Ld(Ld) , .shift_out(shift_out));
    LFSR lfsr(.R(R), .Clk(Clk), .input_data(shift_out), .CRC_16(crc));
endmodule