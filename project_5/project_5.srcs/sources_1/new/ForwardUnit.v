`timescale 1ns / 1ps
module ForwardUnit( exmemRegWrite, memwbRegWrite,exmemwriteReg, memwbwriteReg,idexRs,idexRt, ForwardA,ForwardB);
    input exmemRegWrite, memwbRegWrite;
    input [4:0] exmemwriteReg, memwbwriteReg;
    input [4:0] idexRs,idexRt;
    output reg [1:0] ForwardA, ForwardB;
    initial begin 
        {ForwardA, ForwardB} = 0;
    end
    always@(*) begin
    if(memwbRegWrite && memwbwriteReg != 0) begin
                         //if(memwbwriteReg == idexRs && (!(exmemRegWrite && (exmemwriteReg != 0) && (exmemwriteReg != idexRs)) )) 
                         if(memwbwriteReg == idexRs)
                            ForwardA = 2'b01;
                        else ForwardA = 2'b00; 
                         //if(memwbwriteReg == idexRt && (!(exmemRegWrite && (exmemwriteReg != 0) && (exmemwriteReg != idexRt)))) 
                           if(memwbwriteReg == idexRt)
                                ForwardB = 2'b01;
                                else ForwardB = 2'b00; 
                        
                     end 
        else if(exmemRegWrite && exmemwriteReg != 0) begin
            if(exmemwriteReg == idexRs)  ForwardA = 2'b10; 
            
             if(exmemwriteReg == idexRt)   ForwardB = 2'b10; 
             
            end 
         
       else begin
            ForwardA = 2'b00;
            ForwardB = 2'b00;
       end
   end 
endmodule
