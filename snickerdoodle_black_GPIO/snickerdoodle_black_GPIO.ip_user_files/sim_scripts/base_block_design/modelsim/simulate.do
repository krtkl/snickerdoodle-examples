onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -pli "C:/Xilinx/Vivado/2015.4/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.base_block_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {base_block_design.udo}

run -all

quit -force
