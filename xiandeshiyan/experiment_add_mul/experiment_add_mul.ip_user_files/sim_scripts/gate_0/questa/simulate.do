onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib gate_0_opt

do {wave.do}

view wave
view structure
view signals

do {gate_0.udo}

run -all

quit -force
