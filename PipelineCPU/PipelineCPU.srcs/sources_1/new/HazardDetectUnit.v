`timescale 1ns / 1ps
module HazardDetectUnit(idexMemRead, clk,pcin,ins,ifidRs, ifidRt, idexRt, pcout,nopcount,nop);
    input idexMemRead, clk;
    input [31:0] pcin,ins;
    input [4:0] ifidRs, ifidRt, idexRt;
    output reg [31:0] pcout,nopcount;
    output nop;
    assign nop = (nopcount == 0) ? 1 : 0;
    parameter BEQ = 6'b000100;
    parameter BNE = 6'b000101;
    initial begin 
        {pcout,nopcount} <= 0;
    end
    always@(negedge clk) begin
        if(nopcount != 0) nopcount = nopcount - 1;
        if(idexMemRead && (idexRt == ifidRs || idexRt == ifidRt) && (idexRt != 0)) begin
            if(ins[31:26] == BEQ || ins[31:26] == BNE) nopcount = 2;
            else nopcount = 1;
            pcout = pcin + 4;
        end
    end
endmodule
