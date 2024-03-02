`timescale 1ns / 1ps


module Mulx #(parameter width=32)(A,B,select,result);
input [width-1:0]A,B;
input select;
output[width-1:0]result;
assign result= select ?A:B;
endmodule

