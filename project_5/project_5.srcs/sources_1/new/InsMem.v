`timescale 1ns / 1ps
module InsMem(pc,ins);
input wire[31:0] pc;
output reg[31:0] ins;
reg [31:0] mem[255:0];
initial begin 
    $readmemh("file2b.txt",mem); 
end
always@(pc)begin 
     ins = mem[pc >> 2];
end
endmodule