`timescale 1ns / 1ps


module Adder #(parameter width=32)(A,B,result);
input [width-1:0]A,B;
output[width-1:0]result;
assign result= A+B;
endmodule
