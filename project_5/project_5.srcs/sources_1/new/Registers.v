`timescale 1ns / 1ps

module Registers(
clk, regWrite, ifJAL, pcin, readReg1, readReg2, writeReg, writeData, readData1, readData2,ra);
input clk, regWrite;
input ifJAL;
input [31:0] pcin;
input [4:0] readReg1, readReg2, writeReg;
input [31:0] writeData;
output [31:0] readData1, readData2;
output [31:0] ra;
reg [31:0] register [31:0];
assign     readData1 = register[readReg1];
assign     readData2= register[readReg2];//¶Á²Ù×÷
integer i;
initial begin
    for(i = 0; i < 32; i = i + 1)
        register[i] <= 0;
 end
assign ra = register[31];



 always@(negedge clk) begin
    if(regWrite == 1 && writeReg != 0) 
        register[writeReg] <= writeData;
    if(ifJAL) register[31] <= pcin;  
 end//ÉÏÉýÑØÐ´
endmodule
