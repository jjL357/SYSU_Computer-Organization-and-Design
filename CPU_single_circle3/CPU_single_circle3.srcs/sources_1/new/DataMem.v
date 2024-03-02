`timescale 1ns / 1ps
module DataMem(data_address,clk,write_data,Mem_write,readmemory,t,smg);
input [31:0]data_address;
input clk;
input [2:0]t;
output [31:0]smg;
input [31:0]write_data;
input Mem_write;
output [31:0]readmemory;
reg [31:0]datamemory[255:0];
integer i;
assign readmemory=datamemory[data_address>>2];
assign smg=datamemory[t];
initial begin
//nums: .word 0x90,6,9,0x18,0x95,0x79,0x11,0x25
datamemory[0]=32'h00000090;
datamemory[1]=32'h00000006;
datamemory[2]=32'h00000009;
datamemory[3]=32'h00000018;
datamemory[4]=32'h00000095;
datamemory[5]=32'h00000079;
datamemory[6]=32'h00000011;
datamemory[7]=32'h00000025;

for(i = 8; i < 256; i = i + 1) datamemory[i] <= 0;
end
always@(posedge clk)begin
if(Mem_write==1)datamemory[data_address>>2]=write_data;
end
endmodule
