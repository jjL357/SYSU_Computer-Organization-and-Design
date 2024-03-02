`timescale 1ns / 1ps

module ALU(a,b,ALU_control,funct,op,result,shamt);
input [31:0]a;
input [31:0]b;
input [3:0]ALU_control;
input [5:0]funct;
input [5:0]op;
input [5:0]shamt;
output [31:0]result;
reg [31:0]result=0;
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
parameter SLT = 4'b1111;
parameter OR = 4'b0001;
parameter JAL_op=6'b000011;
parameter R_op=6'b000000;
parameter slt_funct=6'b101010;
parameter sll_funct=6'b000000;
parameter SLTI_op=6'b001010;
parameter ADDU_funct = 6'b100001;
integer i;
//parameter AND = 4'b0000;
//parameter SLTU = 4'b101;
//parameter SLT = 4'b1111;
//parameter XOR = 4'b111; 
assign zero= a==b;
always@(a,b,ALU_control,funct,op)begin
if(op==JAL_op)result=b;//jal
else if(funct==sll_funct&&op==R_op)result=(b<<shamt);
else if((funct==slt_funct&&op==R_op)||op==SLTI_op)result= (a[31]&&~b[31])||(a[31]&&b[31]&&a[30:0]<b[30:0])||(~a[31]&&~b[31]&&a[30:0]<b[30:0]);//slt、slti
else 
begin
    case(ALU_control)    //进行运算
    ADD : result = a + b;  //加法
    SUB ://begin 
    //if(a<b)result =32'hffffffff-b+a+1 ;  //减法
     result=a-b;
    //end
    //SLL : result = b << a;  //B左移A位
    //OR : result = b | a;  //或
//    AND : result = a & b;  //与
    //SLTU : result = a < b;  //比较A<B不带符号
    //SLT : result = a[31] != b[31] ? a[31] > b[31] : a < b;    //比较A<B带符号
    //XOR : result = a ^ b;    //异或
    default : result = a;
    endcase
end
end
endmodule
       		
