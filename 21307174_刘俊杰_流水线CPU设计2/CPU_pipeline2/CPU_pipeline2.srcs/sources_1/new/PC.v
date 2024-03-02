`timescale 1ns / 1ps
module PC(clk,pcIn,pc,lw_zero,pc2,pcj,pcb,Jump,Branch);
    input clk;
    input Jump,Branch;
    input lw_zero;
    input [31:0]pc2,pcb,pcj;
    input [31:0]pcIn;
    output [31:0]pc;
    wire [31:0] pc;
    reg [31:0]temp1=0;
    reg[31:0]temp2=0;
    reg [31:0]temp=0;
    reg [31:0]temp4=0;
    assign pc=temp==temp4?temp2:temp1;
    always @(posedge clk&lw_zero)
    begin
        temp1=lw_zero?pcIn:pc2;
        temp=temp+1;
    end
    
    always @(negedge clk)
        begin
            if(Jump==1)temp2=pcj;
            else if(Branch==1)temp2=pcb;
            else temp2=temp1;
            temp4=temp;
        end
endmodule


