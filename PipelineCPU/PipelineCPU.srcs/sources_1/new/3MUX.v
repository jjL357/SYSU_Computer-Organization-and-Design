`timescale 1ns / 1ps

module 3MUX
 #(parameter width = 32)
(a0,a1,a2,select,y);//ȫ������·ѡ�����Ҵ���һ�������ź�
input [width-1:0] a0,a1,a2;
input [1:0]select;
output [width-1:0] y;
endmodule
