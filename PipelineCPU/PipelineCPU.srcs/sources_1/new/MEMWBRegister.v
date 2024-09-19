`timescale 1ns / 1ps
module MEMWBRegister(
    input clk,
    input Jump,regWrite,MemtoReg,
    input [31:0] pc,readData,ALUresult,
    input [4:0] writeReg,
    output reg memwbJump,memwbregWrite,memwbMemtoReg,
    output reg [31:0] memwbpc,memwbreadData,memwbALUresult,
    output reg [4:0] memwbwriteReg
    );
    initial begin
          {memwbJump,memwbregWrite,memwbMemtoReg,memwbpc,memwbreadData,memwbALUresult,memwbwriteReg} <= 0;
    end
    always @(posedge clk) begin 
        {memwbJump,memwbregWrite,memwbMemtoReg,memwbpc,memwbreadData,memwbALUresult,memwbwriteReg} <=  {Jump,regWrite, MemtoReg, pc, readData, ALUresult,writeReg};
    end    
endmodule
