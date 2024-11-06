vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sources_1/new/adder.v" \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sources_1/new/full_adder.v" \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sources_1/new/gates.v" \
"../../../../experiment_add_mul.srcs/sources_1/ip/gate_0/sim/gate_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

