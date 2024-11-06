vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sources_1/new/adder.v" \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sources_1/new/full_adder.v" \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sources_1/new/gates.v" \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sim/gate_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

