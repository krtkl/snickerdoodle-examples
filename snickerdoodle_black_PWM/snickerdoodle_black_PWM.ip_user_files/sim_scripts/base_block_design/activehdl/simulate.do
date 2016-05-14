onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+base_block_design -pli "C:/Xilinx/Vivado/2016.1/lib/win64.o/libxil_vsim.dll" -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L processing_system7_bfm_v2_0_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L axi_lite_ipif_v3_0_3 -L lib_pkg_v1_0_2 -L axi_timer_v2_0_10 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_8 -L fifo_generator_v13_1_0 -L axi_data_fifo_v2_1_7 -L axi_crossbar_v2_1_9 -L axi_protocol_converter_v2_1_8 -O5 xil_defaultlib.base_block_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {base_block_design.udo}

run -all

endsim

quit -force
