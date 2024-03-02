`timescale 1ns / 1ps

module Registers(Reg1,Reg2,clk,RegWrite,Write_Reg,Write_data,Reg1_read,Reg2_read,Reg3,RegDst);
input [4:0]Reg1;
input [4:0]Reg2;
input clk;
input RegWrite;
input [4:0]Write_Reg;
input [31:0]Write_data;
input [4:0]Reg3;
input RegDst;

output [31:0]Reg1_read;
output [31:0]Reg2_read;
reg [31:0]registers[31:0];
assign Reg1_read=registers[Reg1];
assign Reg2_read=registers[Reg2];

integer i;
	initial
	begin	//初始时，将32个寄存器全部赋值为0
		for(i = 0; i < 32; i = i + 1)
		    registers[i] <= 0;
	end
	always@(posedge clk)
	begin
		if(RegWrite && Write_Reg)
		begin
		     if(RegDst==1)registers[Reg3] = Write_data;
			 else registers[Reg2] = Write_data;
		end
	end
    
endmodule
