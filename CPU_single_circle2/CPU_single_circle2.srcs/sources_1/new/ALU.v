`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/17 19:46:12
// Design Name: 
// Module Name: ALU
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


module ALU(a,b,ALU_control,result,zero);
input [31:0]a;
input [31:0]b;
input [3:0]ALU_control;
output [31:0]result;
output zero;
reg [31:0]result=0;
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
//parameter SLL = 4'b010;
parameter OR = 4'b0001;
//parameter AND = 4'b0000;
//parameter SLTU = 4'b101;
//parameter SLT = 4'b1111;
//parameter XOR = 4'b111; 
assign zero= a==b;
always@(a,b,ALU_control)
begin
    case(ALU_control)    //��������
    ADD : result = a + b;  //�ӷ�
    SUB ://begin 
    //if(a<b)result =32'hffffffff-b+a+1 ;  //����
     result=a-b;
    //end
    //SLL : result = b << a;  //B����Aλ
    //OR : result = b | a;  //��
//    AND : result = a & b;  //��
    //SLTU : result = a < b;  //�Ƚ�A<B��������
    //SLT : result = a[31] != b[31] ? a[31] > b[31] : a < b;    //�Ƚ�A<B������
    //XOR : result = a ^ b;    //���
    default : result = a;
    endcase
end
endmodule
       		
       		
       		
       		
       		
       		
       		
       		
       		