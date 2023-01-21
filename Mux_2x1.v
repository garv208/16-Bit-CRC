`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2023 01:25:27
// Design Name: 
// Module Name: Mux_2x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux_2x1(input [3:0] a,
    input [15:0]b,
    input sl,
    output reg [19:0] out);
    always @ (sl)
    begin
        if(sl)
            out = {a, b[15:0]};
        else
            out = {a, 16'b0};
    end
endmodule