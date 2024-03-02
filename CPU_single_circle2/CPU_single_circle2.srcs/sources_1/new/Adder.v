`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/18 21:24:50
// Design Name: 
// Module Name: Adder
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

module Adder #(parameter width=32)(A,B,result);
input [width-1:0]A,B;
output[width-1:0]result;
assign result=A+B;
endmodule