
t
Command: %s
53*	vivadotcl2C
/synth_design -top display -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
�
%s*synth2�
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 416.762 ; gain = 96.734
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
display2default:default2
 2default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/display.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
CPU2default:default2
 2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Adder2default:default2
 2default:default2Y
CD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Adder.v2default:default2
42default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter width bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Adder2default:default2
 2default:default2
12default:default2
12default:default2Y
CD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Adder.v2default:default2
42default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mulx2default:default2
 2default:default2X
BD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Mulx.v2default:default2
42default:default8@Z8-6157h px� 
[
%s
*synth2C
/	Parameter width bound to: 32 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mulx2default:default2
 2default:default2
22default:default2
12default:default2X
BD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Mulx.v2default:default2
42default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2default:default2
 2default:default2V
@D:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/PC.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2default:default2
 2default:default2
32default:default2
12default:default2V
@D:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/PC.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PCAdder42default:default2
 2default:default2\
FD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/PCAdder4.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PCAdder42default:default2
 2default:default2
42default:default2
12default:default2\
FD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/PCAdder4.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
InsMem2default:default2
 2default:default2Z
DD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/InsMem.v2default:default2
22default:default8@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
	sort8.txt2default:default2Z
DD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/InsMem.v2default:default2
82default:default8@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
InsMem2default:default2
 2default:default2
52default:default2
12default:default2Z
DD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/InsMem.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Control2default:default2
 2default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Control.v2default:default2
32default:default8@Z8-6157h px� 
S
%s
*synth2;
'	Parameter BEQ_op bound to: 6'b000100 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter BNE_op bound to: 6'b000101 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter ADDI_op bound to: 6'b001000 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter R_format_op bound to: 6'b000000 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter ADD_funct bound to: 6'b100000 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter SUB_funct bound to: 6'b100010 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter LW_op bound to: 6'b100011 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter SW_op bound to: 6'b101011 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter J_op bound to: 6'b000010 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter lw_op bound to: 2'b00 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter sw_op bound to: 2'b01 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter beq_op bound to: 2'b10 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter R_op bound to: 2'b11 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter ADDIU_op bound to: 6'b001001 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter JAL_op bound to: 6'b000011 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter SLTI_op bound to: 6'b001010 
2default:defaulth p
x
� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
MemRead2default:default2
Control2default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Control.v2default:default2
92default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Control2default:default2
 2default:default2
62default:default2
12default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Control.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

ALUControl2default:default2
 2default:default2^
HD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALUControl.v2default:default2
32default:default8@Z8-6157h px� 
N
%s
*synth26
"	Parameter lw_op bound to: 2'b00 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter sw_op bound to: 2'b01 
2default:defaulth p
x
� 
O
%s
*synth27
#	Parameter beq_op bound to: 2'b10 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter R_op bound to: 2'b11 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter ADD bound to: 4'b0010 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter SUB bound to: 4'b0110 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter OR bound to: 4'b0001 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter ADD_funct bound to: 6'b100000 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter SUB_funct bound to: 6'b100010 
2default:defaulth p
x
� 
�
default block is never used226*oasys2^
HD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALUControl.v2default:default2
222default:default8@Z8-226h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
funct2default:default2^
HD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALUControl.v2default:default2
212default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

ALUControl2default:default2
 2default:default2
72default:default2
12default:default2^
HD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALUControl.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	Registers2default:default2
 2default:default2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Registers.v2default:default2
32default:default8@Z8-6157h px� 
�
&Input port '%s' has an internal driver4442*oasys2
ra2default:default2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Registers.v2default:default2
202default:default8@Z8-6104h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Registers2default:default2
 2default:default2
82default:default2
12default:default2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Registers.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALU.v2default:default2
32default:default8@Z8-6157h px� 
N
%s
*synth26
"	Parameter ADD bound to: 4'b0010 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter SUB bound to: 4'b0110 
2default:defaulth p
x
� 
N
%s
*synth26
"	Parameter SLT bound to: 4'b1111 
2default:defaulth p
x
� 
M
%s
*synth25
!	Parameter OR bound to: 4'b0001 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter JAL_op bound to: 6'b000011 
2default:defaulth p
x
� 
Q
%s
*synth29
%	Parameter R_op bound to: 6'b000000 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter slt_funct bound to: 6'b101010 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter sll_funct bound to: 6'b000000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter SLTI_op bound to: 6'b001010 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter ADDU_funct bound to: 6'b100001 
2default:defaulth p
x
� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
shamt2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALU.v2default:default2
292default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
92default:default2
12default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALU.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
Mulx__parameterized02default:default2
 2default:default2X
BD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Mulx.v2default:default2
42default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter width bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
Mulx__parameterized02default:default2
 2default:default2
92default:default2
12default:default2X
BD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/Mulx.v2default:default2
42default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
A2default:default2
22default:default2(
Mulx__parameterized02default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
572default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
B2default:default2
22default:default2(
Mulx__parameterized02default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
572default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
result2default:default2
22default:default2(
Mulx__parameterized02default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
572default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
DataMem2default:default2
 2default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/DataMem.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DataMem2default:default2
 2default:default2
102default:default2
12default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/DataMem.v2default:default2
22default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
ra2default:default2
CPU2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
262default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU2default:default2
 2default:default2
112default:default2
12default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
22default:default8@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
tt_reg2default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/display.v2default:default2
382default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
display2default:default2
 2default:default2
122default:default2
12default:default2[
ED:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/display.v2default:default2
32default:default8@Z8-6155h px� 
}
!design %s has unconnected port %s3331*oasys2
Control2default:default2
MemRead2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 471.660 ; gain = 151.633
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[31]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[30]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[29]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[28]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[27]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[26]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[25]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[24]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[23]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[22]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[21]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[20]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[19]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[18]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[17]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[16]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[15]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[14]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[13]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[12]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[11]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[10]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[9]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[8]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[7]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[6]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[5]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[4]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[3]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[2]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[1]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
�
'tying undriven pin %s:%s to constant 0
3295*oasys2
r12default:default2
ra[0]2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/CPU.v2default:default2
542default:default8@Z8-3295h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 471.660 ; gain = 151.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 471.660 ; gain = 151.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/constrs_1/new/display.xdc2default:default8Z20-179h px� 
�
!port, pin or net '%s' not found.
663*	planAhead2
	get_ports2default:default2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/constrs_1/new/display.xdc2default:default2
352default:default8@Z12-663h px�
�
DImplicit search of objects for pattern '%s' matched to '%s' objects.1744*	planAhead2
clk2default:default2
port2default:default2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/constrs_1/new/display.xdc2default:default2
352default:default8@Z12-2286h px�
�
Finished Parsing XDC File [%s]
178*designutils2]
GD:/CPU_single_circle3/CPU_single_circle3.srcs/constrs_1/new/display.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2[
GD:/CPU_single_circle3/CPU_single_circle3.srcs/constrs_1/new/display.xdc2default:default2-
.Xil/display_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
810.7422default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 810.742 ; gain = 490.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 810.742 ; gain = 490.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 810.742 ; gain = 490.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
mem2default:defaultZ8-5546h px� 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ALU_control2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[31]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[31]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[30]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[30]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[29]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[29]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[28]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[28]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[27]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[27]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[26]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[26]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[25]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[25]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[24]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[24]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[23]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[23]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[22]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[22]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[21]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[21]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[20]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[20]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[19]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[19]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[18]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[18]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[17]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[17]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[16]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[16]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[15]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[15]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[14]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[14]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[13]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[13]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[12]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[12]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[11]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[11]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[10]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2%
registers_reg[10]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[9]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[9]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[8]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[8]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[7]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[7]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[6]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[6]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[5]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[5]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[4]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[4]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[3]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[3]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[2]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[2]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[1]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[1]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[0]2default:defaultZ8-5546h px� 
�
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2$
registers_reg[0]2default:defaultZ8-5546h px� 
�
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2W
AD:/CPU_single_circle3/CPU_single_circle3.srcs/sources_1/new/ALU.v2default:default2
352default:default8@Z8-5818h px� 
�
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
seg2default:default2
322default:default2
252default:defaultZ8-5545h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 810.742 ; gain = 490.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 34    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  56 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 64    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
<
%s
*synth2$
Module display 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
:
%s
*synth2"
Module Adder 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module Mulx 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
7
%s
*synth2
Module PC 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module PCAdder4 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module InsMem 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  56 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
?
%s
*synth2'
Module ALUControl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
>
%s
*synth2&
Module Registers 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 64    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
� 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
I
%s
*synth21
Module Mulx__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module CPU 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     28 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2"
result_reg[31]2default:default2
FD2default:default2"
result_reg[30]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2"
result_reg[30]2default:default2
FD2default:default2"
result_reg[29]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2"
result_reg[29]2default:default2
FD2default:default2"
result_reg[28]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2$
\result_reg[28] 2default:defaultZ8-3333h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
result_reg[28]2default:default2
display2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:36 ; elapsed = 00:02:45 . Memory (MB): peak = 810.742 ; gain = 490.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2|
h+------------+----------------------------------+-----------+----------------------+------------------+
2default:defaulth px� 
�
%s*synth2}
i|Module Name | RTL Object                       | Inference | Size (Depth x Width) | Primitives       | 
2default:defaulth px� 
�
%s*synth2|
h+------------+----------------------------------+-----------+----------------------+------------------+
2default:defaulth px� 
�
%s*synth2}
i|display     | nolabel_line71/d1/datamemory_reg | Implied   | 256 x 32             | RAM128X1D x 64   | 
2default:defaulth px� 
�
%s*synth2}
i+------------+----------------------------------+-----------+----------------------+------------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:45 ; elapsed = 00:02:55 . Memory (MB): peak = 810.742 ; gain = 490.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:03:47 ; elapsed = 00:04:00 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2|
h+------------+----------------------------------+-----------+----------------------+------------------+
2default:defaulth p
x
� 
�
%s
*synth2}
i|Module Name | RTL Object                       | Inference | Size (Depth x Width) | Primitives       | 
2default:defaulth p
x
� 
�
%s
*synth2|
h+------------+----------------------------------+-----------+----------------------+------------------+
2default:defaulth p
x
� 
�
%s
*synth2}
i|display     | nolabel_line71/d1/datamemory_reg | Implied   | 256 x 32             | RAM128X1D x 64   | 
2default:defaulth p
x
� 
�
%s
*synth2}
i+------------+----------------------------------+-----------+----------------------+------------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:03:48 ; elapsed = 00:04:01 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:03:49 ; elapsed = 00:04:02 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:49 ; elapsed = 00:04:02 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:49 ; elapsed = 00:04:03 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:49 ; elapsed = 00:04:03 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:49 ; elapsed = 00:04:03 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:49 ; elapsed = 00:04:03 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|1     |BUFG      |     5|
2default:defaulth px� 
G
%s*synth2/
|2     |CARRY4    |    47|
2default:defaulth px� 
G
%s*synth2/
|3     |LUT1      |     8|
2default:defaulth px� 
G
%s*synth2/
|4     |LUT2      |   126|
2default:defaulth px� 
G
%s*synth2/
|5     |LUT3      |    74|
2default:defaulth px� 
G
%s*synth2/
|6     |LUT4      |    80|
2default:defaulth px� 
G
%s*synth2/
|7     |LUT5      |   211|
2default:defaulth px� 
G
%s*synth2/
|8     |LUT6      |   714|
2default:defaulth px� 
G
%s*synth2/
|9     |MUXF7     |   261|
2default:defaulth px� 
G
%s*synth2/
|10    |MUXF8     |    64|
2default:defaulth px� 
G
%s*synth2/
|11    |RAM128X1D |    64|
2default:defaulth px� 
G
%s*synth2/
|12    |FDRE      |  1126|
2default:defaulth px� 
G
%s*synth2/
|13    |FDSE      |     4|
2default:defaulth px� 
G
%s*synth2/
|14    |IBUF      |     3|
2default:defaulth px� 
G
%s*synth2/
|15    |OBUF      |    12|
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
Y
%s
*synth2A
-+------+-----------------+----------+------+
2default:defaulth p
x
� 
Y
%s
*synth2A
-|      |Instance         |Module    |Cells |
2default:defaulth p
x
� 
Y
%s
*synth2A
-+------+-----------------+----------+------+
2default:defaulth p
x
� 
Y
%s
*synth2A
-|1     |top              |          |  2799|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|2     |  nolabel_line71 |CPU       |  2655|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|3     |    add1         |Adder     |     8|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|4     |    al1          |ALU       |    39|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|5     |    d1           |DataMem   |    93|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|6     |    p1           |PC        |   528|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|7     |    p2           |PCAdder4  |     8|
2default:defaulth p
x
� 
Y
%s
*synth2A
-|8     |    r1           |Registers |  1947|
2default:defaulth p
x
� 
Y
%s
*synth2A
-+------+-----------------+----------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:49 ; elapsed = 00:04:03 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:03:35 ; elapsed = 00:03:54 . Memory (MB): peak = 913.230 ; gain = 254.121
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:03:49 ; elapsed = 00:04:03 . Memory (MB): peak = 913.230 ; gain = 593.203
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
4392default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 64 instances were transformed.
  RAM128X1D => RAM128X1D (RAMD64E, RAMD64E, MUXF7, MUXF7, RAMD64E, RAMD64E): 64 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1132default:default2
442default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:03:522default:default2
00:04:072default:default2
913.2302default:default2
606.0742default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2U
AD:/CPU_single_circle3/CPU_single_circle3.runs/synth_1/display.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2x
dExecuting : report_utilization -file display_utilization_synth.rpt -pb display_utilization_synth.pb
2default:defaulth px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.046 . Memory (MB): peak = 913.230 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Nov 23 00:24:04 20222default:defaultZ17-206h px� 


End Record