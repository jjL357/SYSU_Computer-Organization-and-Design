`timescale 1ns / 1ps
module IFIDRegister(clk,pc,pcnext,ins,opOut,pcOut,pcnextOut,insOut,rs,rt,rd );
    input clk;
    input [31:0] pc,pcnext,ins;
    output reg [5:0] opOut;
    output reg[31:0] pcOut,pcnextOut,insOut;
    output reg[4:0] rs,rt,rd;
    initial begin 
        opOut = 0;
        pcOut = 0;
        pcnextOut = 0;
        insOut = 0;
    end
    always@(posedge clk) begin 
        opOut = ins[31:26];
        pcOut = pc;
        pcnextOut = pcnext;
        insOut = ins;
        rs = ins[25:21];
        rt = ins[20:16];
        rd = ins[15:11];
    end
endmodule
