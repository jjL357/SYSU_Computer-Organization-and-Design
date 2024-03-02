`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/18 21:47:09
// Design Name: 
// Module Name: Mulx
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


module Mulx #(parameter width=32)(A,B,select,result);
input [width-1:0]A,B;
input select;
output[width-1:0]result;
assign result= select ?A:B;
endmodule
