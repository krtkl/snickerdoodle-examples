connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299A5700E" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299A5700E-23727093-0"}
fpga -file ./sdk/helloworld/_ide/bitstream/sn_black_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw ./sdk/sn_black_wrapper/export/sn_black_wrapper/hw/sn_black_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source ./sdk/helloworld/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow ./sdk/helloworld/Debug/helloworld.elf
configparams force-mem-access 0
bpadd -addr &main
