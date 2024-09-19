`timescale 1ns / 1ps
module smg(clk,BtnL,BtnR,seg,sel);
input clk;
input BtnL;
input BtnR;
output [7:0]seg;
output [3:0]sel;
reg [3:0]sel;
reg [7:0]seg;
reg[31:0] divclk_cnt = 0; 
reg divclk=0;
reg [3:0]x=0;
reg [3:0]a=0;
reg [3:0]b=0;
reg [1:0]temp=0;
parameter s0 = 0, s1 = 1, s2 = 2,s3=3,s4=4;
always@(posedge clk)
begin 
if(divclk_cnt==250000)
begin
divclk_cnt=0;
temp=temp+1;
if(temp==0)
begin
seg= 8'b11111001;
sel=4'b1110;
end
if(temp==1)begin
sel=4'b1101;
 seg=8'b00100100;
end
if(temp==2)begin
sel=4'b1011;
seg=8'b10110000;
end
if(temp==3)
begin
sel=4'b0111;
if(a>=b)x=a-b;
else begin
x=a-b;
x=x-6;
end
case(x)
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
        default:seg<=8'b11111111;
        endcase
end

end

else
begin
divclk_cnt=divclk_cnt+1'b1;
end

end



always @(posedge BtnL)begin
if(a==9)a=0;
else a=a+1'b1;
end

always @(posedge BtnR)begin
if(b==9)b=0;
else b=b+1'b1;
end


endmodule
