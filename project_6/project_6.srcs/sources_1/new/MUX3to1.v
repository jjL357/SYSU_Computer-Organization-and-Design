`timescale 1ns / 1ps


module MUX3to1
#(parameter width = 32)
(a0,a1,a2,select,y);//全部是二路选择器且带有一个控制信号
    input [width-1:0] a0,a1,a2;
    input [1:0] select;
    output reg [width-1:0] y;
    always@(*) begin
        case(select)
            2'b00: y = a0;
            2'b01: y = a1;
            2'b10: y = a2; 
        endcase
     end
endmodule
