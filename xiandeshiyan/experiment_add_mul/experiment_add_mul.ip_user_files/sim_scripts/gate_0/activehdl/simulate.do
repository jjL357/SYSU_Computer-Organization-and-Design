onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+gate_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gate_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {gate_0.udo}

run -all

endsim

quit -force
