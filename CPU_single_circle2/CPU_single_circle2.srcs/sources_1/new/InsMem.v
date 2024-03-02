`timescale 1ns / 1ps
module InsMem(pc,  ins);
input [31:0]pc;
output [31:0]ins;
reg [31:0]ins=0;
reg[31:0] mem[255:0];
initial begin
mem[0] = 32'h20080004;
mem[1] = 32'h00009820;
mem[2] = 32'h8d110000;
mem[3] = 32'h22310001;
mem[4] = 32'h8d120004;
mem[5] = 32'h12320003;
mem[6] = 32'h02719820;
mem[7] = 32'h20120000;
mem[8] = 32'h08000003;
mem[9] = 32'h02729822;
mem[10]= 32'had130008;
mem[11]= 32'h8d130008;
mem[12]= 32'h0800000b;
end
always @(pc)begin
ins = mem[pc>>2]; 
end
endmodule