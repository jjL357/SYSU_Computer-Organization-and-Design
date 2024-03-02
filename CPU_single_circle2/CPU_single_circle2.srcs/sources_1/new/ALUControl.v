`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/18 20:48:05
// Design Name: 
// Module Name: ALUControl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALUControl(funct,ALUOp,ALU_control);
input [5:0]funct;
input [1:0]ALUOp;
output [3:0]ALU_control;
parameter lw_op=2'b00; 
parameter sw_op=2'b01; 
parameter beq_op=2'b10; 
parameter R_op=2'b11; 
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
//parameter SLL = 4'b010;
parameter OR = 4'b0001;
//parameter AND = 4'b0000;
//parameter SLTU = 4'b101;
parameter SLT = 4'b1111;
//parameter XOR = 4'b111; 
parameter ADD_funct=6'b100000;
parameter SUB_funct=6'b100010;
reg [3:0]ALU_control=0;
always@(ALUOp)begin
case(ALUOp)
beq_op: ALU_control=SUB;
R_op:begin
if(funct==SUB_funct)ALU_control=SUB; 
else ALU_control=ADD;
end
lw_op:ALU_control=ADD;
sw_op:ALU_control=ADD;
default :ALU_control=0;
endcase
end
endmodule
