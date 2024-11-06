`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 20:07:16
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input [3:0] a,
    input [3:0] b,
    input M,
    output [3:0] sum,
    output cout,
    output over
    );
    wire[3:0] post_b=b;
    wire[2:0] cin;
    adder a1(.a(a[0]),.b(post_b[0]),.cin(M),.s(sum[0]),.cout(cin[0]));
    adder a2(.a(a[1]),.b(post_b[1]),.cin(cin[0]),.s(sum[1]),.cout(cin[1]));
    adder a3(.a(a[2]),.b(post_b[2]),.cin(cin[1]),.s(sum[2]),.cout(cin[2]));
    adder a4(.a(a[3]),.b(post_b[3]),.cin(cin[2]),.s(sum[3]),.cout(cout));
    assign over=cout^cin[2];
endmodule
