`timescale 1ns / 1ps
module MUX
#(parameter width = 8)
(a0,a1,select,y);//ȫ���Ƕ�·ѡ�����Ҵ���һ�������ź�
input [width-1:0]a0,a1;
input select;
output [width-1:0] y;
assign y = select ? a1:a0;
endmodule