-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Nov  7 20:35:21 2022
-- Host        : LAPTOP-OKO95352 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top gate_0 -prefix
--               gate_0_ gate_0_sim_netlist.vhdl
-- Design      : gate_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gate_0_gate is
  port (
    sw : in STD_LOGIC_VECTOR ( 8 downto 0 );
    led : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end gate_0_gate;

architecture STRUCTURE of gate_0_gate is
  signal \g/cin_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led[5]_INST_0_i_1\ : label is "soft_lutpair0";
begin
\led[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sw(4),
      I1 => sw(0),
      O => led(0)
    );
\led[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966666"
    )
        port map (
      I0 => sw(5),
      I1 => sw(1),
      I2 => sw(0),
      I3 => sw(8),
      I4 => sw(4),
      O => led(1)
    );
\led[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => sw(6),
      I1 => sw(8),
      I2 => sw(2),
      I3 => \g/cin_1\,
      O => led(2)
    );
\led[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666999969666"
    )
        port map (
      I0 => sw(7),
      I1 => sw(3),
      I2 => sw(2),
      I3 => \g/cin_1\,
      I4 => sw(6),
      I5 => sw(8),
      O => led(3)
    );
\led[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB3A3A22EEACAC88"
    )
        port map (
      I0 => sw(3),
      I1 => sw(8),
      I2 => sw(6),
      I3 => \g/cin_1\,
      I4 => sw(2),
      I5 => sw(7),
      O => led(4)
    );
\led[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1501022A80A85440"
    )
        port map (
      I0 => sw(7),
      I1 => sw(2),
      I2 => \g/cin_1\,
      I3 => sw(6),
      I4 => sw(8),
      I5 => sw(3),
      O => led(5)
    );
\led[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE2AF8B0"
    )
        port map (
      I0 => sw(1),
      I1 => sw(4),
      I2 => sw(8),
      I3 => sw(0),
      I4 => sw(5),
      O => \g/cin_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gate_0 is
  port (
    sw : in STD_LOGIC_VECTOR ( 8 downto 0 );
    led : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gate_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of gate_0 : entity is "gate_0,gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gate_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of gate_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of gate_0 : entity is "gate,Vivado 2018.3";
end gate_0;

architecture STRUCTURE of gate_0 is
begin
inst: entity work.gate_0_gate
     port map (
      led(5 downto 0) => led(5 downto 0),
      sw(8 downto 0) => sw(8 downto 0)
    );
end STRUCTURE;
