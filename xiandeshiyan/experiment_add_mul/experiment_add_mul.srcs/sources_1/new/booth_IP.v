`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/07 15:36:56
// Design Name: 
// Module Name: booth_IP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module booth_IP(clk,x,y,cout);
    input clk;
    input [3:0]x,y;
    output [7:0]cout;
    reg [7:0] cout;

    parameter s0 = 0, s1 = 1, s2 = 2;
    reg [2:0] count = 0;
    reg [1:0] state = 0;
    reg [7:0] P=0;
    reg [3:0] y_reg=0;
    reg [7:0] T=0;
    wire [1:0]cin;
    reg temp=0;
    wire over;
    wire [7:0]K;
    gate_0 u0(.sw({temp,P[3:0],T[3:0]}),.led({over,cin[0],K[3:0]}));
    gate_0 u1(.sw({cin[0],P[7:4],T[7:4]}),.led({over,cin[1],K[7:4]}));
    always @(posedge clk) begin
        case (state)
            s0: begin
                count <= 0;
                P <= 0;
                y_reg <= y;
                T <= {{4{1'b0}}, x};
                state <= s1;
            end
            s1: begin
                if(count == 3'b100)begin
                    state <= s2;end
                else begin
                    if(y_reg[0] == 1'b1)
                    begin
                        P <= K;
                    end
                    else begin
                        P <= P;
                    end
                    y_reg <= y_reg >> 1;
                    T <= T << 1;
                    count <= count + 1;
                    state <= s1;
                end
            end
            s2: begin
                cout <= P;
                state <= 0;
            end
            default: ;
        endcase
    end
endmodule
