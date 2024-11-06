// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov  7 20:35:21 2022
// Host        : LAPTOP-OKO95352 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top gate_0 -prefix
//               gate_0_ gate_0_stub.v
// Design      : gate_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gate,Vivado 2018.3" *)
module gate_0(sw, led)
/* synthesis syn_black_box black_box_pad_pin="sw[8:0],led[5:0]" */;
  input [8:0]sw;
  output [5:0]led;
endmodule
