`timescale 1ns / 1ps
module ForwardUnit2( clk,Branch,idexRegWrite,exmemRegWrite,ifidRs, ifidRt, idexwriteReg,exmemwriteReg, ForwardC,ForwardD);
    input idexRegWrite,exmemRegWrite,Branch,clk;   
    input [4:0] ifidRs, ifidRt, idexwriteReg,exmemwriteReg;
    output reg [1:0] ForwardC, ForwardD;
    initial begin 
        ForwardC = 0;
        ForwardD = 0;
    end
    
    always@(negedge clk) begin
        if(Branch==1)begin
         if(exmemRegWrite&&exmemwriteReg!=0) begin
                 if(exmemwriteReg == ifidRs) ForwardC = 2'b10; 
                 else ForwardC = 2'b00;
                 if(exmemwriteReg == ifidRt) ForwardD = 2'b10;
                 else  ForwardD = 2'b00;
               
                 end
               
        else if(idexRegWrite&&idexwriteReg!=0) begin
            if(idexwriteReg == ifidRs) ForwardC = 2'b01; 
            if(idexwriteReg == ifidRt) ForwardD = 2'b01;
        end
       end
        else begin
            ForwardC = 2'b00;
            ForwardD = 2'b00;
        end
        
    end
endmodule
