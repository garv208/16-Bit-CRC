`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2023 00:49:00
// Design Name: 
// Module Name: LSR_1
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


module LSR_1(input Clk, Reset , Ld,
    input [3:0] Din,
    output reg shift_out);
    reg [19:0] shift_data;
    always @(posedge Reset or posedge Ld)
    begin
        if(Reset)
            shift_data = 20'b0;
        else if(Ld)
            shift_data = {Din, 16'b0000000000000000}; //redundant bits
    end
    always @(negedge Clk)
    if(Ld)
    begin
        shift_out <= shift_data[19];
        shift_data[19:1]<= shift_data[18:0];
        shift_data[0]<= 1'b0;
    end
endmodule