`timescale 1ns / 1ps

module display(clk,seg,choose,BtnL,BtnC);
input BtnL;
input BtnC;
input clk;
output [3:0]choose;
output [7:0]seg;
reg sort=0;
reg [7:0]seg;
wire [15:0]q;
reg [31:0]tt;
reg [1:0]temp=0;
reg [3:0]choose=4'b1110;
wire [31:0]smg;
reg [2:0]t=0;
reg [31:0]result;
reg[31:0] divclk_cnt = 0; 
reg divclk=0;
reg [8:0]dis;
always@(posedge BtnC)sort=~sort;
always@(posedge BtnL)begin
t=t+1;
end
always@(posedge clk)begin
divclk_cnt=divclk_cnt+1;
if(divclk_cnt==500)begin
divclk=~divclk;
divclk_cnt=0;
end
end
always@(posedge divclk)
begin
temp=temp+1;
case(temp)
3:begin
choose=4'b0111;
tt=smg/16;
result=smg-tt*16;
end
2:begin
choose=4'b1011;
result=smg/16;
end
1:begin
choose=4'b1101;
result=0;
end
0:begin
choose=4'b1110;
result=t+1;
end
endcase
end
always@(result)begin
case(result)
    0: seg <= 8'b11000000;
    1: seg <= 8'b11111001;
    2: seg <= 8'b10100100;
    3: seg <= 8'b10110000;
    4: seg <= 8'b10011001;
    5: seg <= 8'b10010010;
    6: seg <= 8'b10000010;
    7: seg <= 8'b11111000;
    8: seg <= 8'b10000000;
    9: seg <= 8'b10010000;
        default:seg<=8'b00010010;
        endcase
end

CPU(clk&sort,q,t,smg);
endmodule

