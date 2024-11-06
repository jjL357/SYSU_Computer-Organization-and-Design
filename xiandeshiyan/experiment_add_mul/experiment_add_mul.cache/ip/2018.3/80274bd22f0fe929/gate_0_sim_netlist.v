// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  7 20:35:21 2022
// Host        : LAPTOP-OKO95352 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gate_0_sim_netlist.v
// Design      : gate_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gate
   (sw,
    led);
  input [8:0]sw;
  output [5:0]led;

  wire \g/cin_1 ;
  wire [5:0]led;
  wire [8:0]sw;

  LUT2 #(
    .INIT(4'h6)) 
    \led[0]_INST_0 
       (.I0(sw[4]),
        .I1(sw[0]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h69966666)) 
    \led[1]_INST_0 
       (.I0(sw[5]),
        .I1(sw[1]),
        .I2(sw[0]),
        .I3(sw[8]),
        .I4(sw[4]),
        .O(led[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \led[2]_INST_0 
       (.I0(sw[6]),
        .I1(sw[8]),
        .I2(sw[2]),
        .I3(\g/cin_1 ),
        .O(led[2]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \led[3]_INST_0 
       (.I0(sw[7]),
        .I1(sw[3]),
        .I2(sw[2]),
        .I3(\g/cin_1 ),
        .I4(sw[6]),
        .I5(sw[8]),
        .O(led[3]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \led[4]_INST_0 
       (.I0(sw[3]),
        .I1(sw[8]),
        .I2(sw[6]),
        .I3(\g/cin_1 ),
        .I4(sw[2]),
        .I5(sw[7]),
        .O(led[4]));
  LUT6 #(
    .INIT(64'h1501022A80A85440)) 
    \led[5]_INST_0 
       (.I0(sw[7]),
        .I1(sw[2]),
        .I2(\g/cin_1 ),
        .I3(sw[6]),
        .I4(sw[8]),
        .I5(sw[3]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAE2AF8B0)) 
    \led[5]_INST_0_i_1 
       (.I0(sw[1]),
        .I1(sw[4]),
        .I2(sw[8]),
        .I3(sw[0]),
        .I4(sw[5]),
        .O(\g/cin_1 ));
endmodule

(* CHECK_LICENSE_TYPE = "gate_0,gate,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "gate,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sw,
    led);
  input [8:0]sw;
  output [5:0]led;

  wire [5:0]led;
  wire [8:0]sw;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gate inst
       (.led(led),
        .sw(sw));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
