module CPU_sim();
reg clk=0;
wire[15:0] q;
CPU uCPU(clk, q);
always #10 clk=~clk;//���д��Ļ�Ҫȥ�������
endmodule