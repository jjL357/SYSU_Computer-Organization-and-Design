-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Nov  7 20:35:21 2022
-- Host        : LAPTOP-OKO95352 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top gate_0 -prefix
--               gate_0_ gate_0_stub.vhdl
-- Design      : gate_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_0 is
  Port ( 
    sw : in STD_LOGIC_VECTOR ( 8 downto 0 );
    led : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end gate_0;

architecture stub of gate_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sw[8:0],led[5:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gate,Vivado 2018.3";
begin
end;
