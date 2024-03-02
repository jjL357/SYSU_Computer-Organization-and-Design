`timescale 1ns / 1ps
module ALU(A,B,shamt,ALUcontrol,result);
    input [31:0] A;
    input [31:0] B;
    input [4:0]shamt;
    input [3:0] ALUcontrol;
    output reg [31:0] result;
    parameter ADD = 4'b0010;
    parameter SUB = 4'b0110;
    parameter AND = 4'b0000;
    parameter OR = 4'b0001;
    parameter SLT = 4'b0111;
    parameter SLL = 4'b1000;
	always@(*)
	begin
		case(ALUcontrol)	//½øÐÐÔËËã
		ADD: result = A + B;
		SUB: result = A - B;
		AND: result = A & B;
		OR : result = A | B;
		SLT: result = (A[31] != B[31] ? A[31] > B[31] : A < B);  
		SLL: result = (B << shamt); 
		default : result = 0;
		endcase
	end
endmodule
