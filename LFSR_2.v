`timescale 1ns / 1ps
module LFSR_2(input input_data,
    input Clk, R,
    output [15:0]CRC_16);
    D_FF D1(.R(R), .Clk(Clk), .D(input_data^CRC_16[15]), .Q(CRC_16[0]));
    D_FF D2(.R(R), .Clk(Clk), .D(CRC_16[0]), .Q(CRC_16[1]));
    D_FF D3(.R(R), .Clk(Clk), .D(CRC_16[1]),.Q(CRC_16[2]));
    D_FF D4(.R(R), .Clk(Clk), .D(CRC_16[2]),.Q(CRC_16[3]));
    D_FF D5(.R(R), .Clk(Clk), .D(CRC_16[3]),.Q(CRC_16[4]));
    D_FF D6(.R(R), .Clk(Clk), .D(CRC_16[4]^CRC_16[15]),.Q(CRC_16[5]));
    D_FF D7(.R(R), .Clk(Clk), .D(CRC_16[5]),.Q(CRC_16[6]));
    D_FF D8(.R(R), .Clk(Clk), .D(CRC_16[6]),.Q(CRC_16[7]));
    D_FF D9(.R(R), .Clk(Clk), .D(CRC_16[7]),.Q(CRC_16[8]));
    D_FF D10(.R(R), .Clk(Clk), .D(CRC_16[8]),.Q(CRC_16[9]));
    D_FF D11(.R(R), .Clk(Clk), .D(CRC_16[9]),.Q(CRC_16[10]));
    D_FF D12(.R(R), .Clk(Clk), .D(CRC_16[10]),.Q(CRC_16[11]));
    D_FF D13(.R(R), .Clk(Clk), .D(CRC_16[15]^CRC_16[11]),.Q(CRC_16[12]));
    D_FF D14(.R(R), .Clk(Clk), .D(CRC_16[12]),.Q(CRC_16[13]));
    D_FF D15(.R(R), .Clk(Clk), .D(CRC_16[13]),.Q(CRC_16[14]));
    D_FF D16(.R(R), .Clk(Clk), .D(CRC_16[14]), .Q(CRC_16[15]));

endmodule