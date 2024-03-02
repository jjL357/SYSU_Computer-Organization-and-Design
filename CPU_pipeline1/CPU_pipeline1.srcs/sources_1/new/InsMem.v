`timescale 1ns / 1ps
module InsMem(pc,ins);
input [31:0]pc;
//input clk;
output reg[31:0]ins=0;
reg[31:0] mem[255:0];
initial begin
$readmemh("file2a.txt",mem);
ins=mem[0];
end
always @(pc)begin
ins = mem[pc>>2]; 
end
endmodule