`timescale 1ns / 1ps
module ALUcontrol(
input [1:0] ALUOp,
input [5:0] funct,
input [5:0] opcode,
output reg [3:0]result
 );
 //ALU control
 parameter ADD = 4'b0010;
 parameter SUB = 4'b0110;
 parameter SLT = 4'b0111;
 parameter SLL = 4'b1000;
 parameter sllfunct = 6'b000000;
 parameter addfunct = 6'b100000;
 parameter addufunct = 6'b100001;
 parameter subfunct = 6'b100010;
 parameter andfunct = 6'b100100;
 parameter orfunct = 6'b100101;
 parameter sltfunct = 6'b101010;
 parameter JRfunct = 6'b001000;
 parameter sltiop = 6'b001010;
 always@(*) begin 
    case(ALUOp)
        2'b00:result = ADD;//lw/sw
        2'b01:result = SUB;//beq
        2'b10: begin//R÷∏¡Ó
            if(funct == addfunct || funct == addufunct) result = ADD;
            else if(funct == sltfunct) result = SLT;
            else if(funct == subfunct) result = SUB;
            else if(funct == sllfunct) result = SLL;
           end
        2'b11:begin//I÷∏¡Ó
             if(opcode == sltiop) result = SLT;
             else result = ADD;
           end  
     endcase
end
endmodule