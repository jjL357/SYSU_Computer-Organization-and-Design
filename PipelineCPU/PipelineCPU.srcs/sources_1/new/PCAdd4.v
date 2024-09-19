`timescale 1ns / 1ps
module PCAdd4 (pc,pcin);
input [31:0]pc;
output [31:0] pcin;
assign pcin = pc + 4;
endmodule
