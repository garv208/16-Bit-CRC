`timescale 1ns / 1ps
module LSR_16(input Clk, Reset , Ld,
    input [19:0] Din,
    output reg shift_out);
    reg [19:0] shift_data;
    always @(posedge Reset or posedge Ld)
    begin
        if(Reset)
            shift_data = 20'b0;
        else if(Ld)
            shift_data = Din[19:0];
    end
    always @(negedge Clk)
    if(Ld)
    begin
        shift_out <= shift_data[19];
        shift_data[19:1]<= shift_data[18:0];
        shift_data[0]<= 1'b0;
    end

endmodule

