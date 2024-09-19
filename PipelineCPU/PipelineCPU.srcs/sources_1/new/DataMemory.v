`timescale 1ns / 1ps
module DataMemory(
    input clk,
    input memRead,
    input memWrite,
    input [31:0] address,
    input [31:0] writeData,
    output [31:0] readData
    );
    reg [31:0] dataMemory [255:0];
   integer i;
assign readData = dataMemory[address >> 2];
initial begin
//nums: .word 0x90,6,9,0x18,0x95,0x79,0x11,0x25   
dataMemory[0]=32'h00000090;
dataMemory[1]=32'h00000006;
dataMemory[2]=32'h00000009;
dataMemory[3]=32'h00000018;
dataMemory[4]=32'h00000095;
dataMemory[5]=32'h00000079;
dataMemory[6]=32'h00000011;
dataMemory[7]=32'h00000025;
for(i = 8; i < 256; i = i + 1) dataMemory[i] <= 0;
end
always@(negedge clk)begin
if(memWrite == 1) dataMemory[address >> 2] = writeData;
end
endmodule