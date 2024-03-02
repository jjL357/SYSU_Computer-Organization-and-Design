`timescale 1ns / 1ps
module InsMem(pc,  ins);
input [31:0]pc;
output [31:0]ins;
reg [31:0]ins=0;
reg[31:0] mem[255:0];
initial begin
$readmemh("sort8.txt",mem);
end
always @(pc)begin
ins = mem[pc>>2]; 
end
endmodule