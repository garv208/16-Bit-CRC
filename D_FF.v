`timescale 1ns / 1ps
module D_FF(input D,
    input Clk,
    input R,
    output reg Q);
    initial begin
        Q = 1'b0;
    end
    always @(posedge Clk)
    begin
        if(R)
            Q = 1'b0;
        else
            Q = D;
    end
endmodule