
################################################################
# This is a generated script based on design: base_block_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source base_block_design_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg400-3

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name base_block_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set pwm0 [ create_bd_port -dir O pwm0 ]
  set pwm1 [ create_bd_port -dir O pwm1 ]
  set pwm2 [ create_bd_port -dir O pwm2 ]
  set pwm3 [ create_bd_port -dir O pwm3 ]
  set pwm4 [ create_bd_port -dir O pwm4 ]
  set pwm5 [ create_bd_port -dir O pwm5 ]
  set pwm6 [ create_bd_port -dir O pwm6 ]
  set pwm7 [ create_bd_port -dir O pwm7 ]
  set pwm8 [ create_bd_port -dir O pwm8 ]
  set pwm9 [ create_bd_port -dir O pwm9 ]

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_timer_1, and set properties
  set axi_timer_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_1 ]

  # Create instance: axi_timer_2, and set properties
  set axi_timer_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_2 ]

  # Create instance: axi_timer_3, and set properties
  set axi_timer_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_3 ]

  # Create instance: axi_timer_4, and set properties
  set axi_timer_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_4 ]

  # Create instance: axi_timer_5, and set properties
  set axi_timer_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_5 ]

  # Create instance: axi_timer_6, and set properties
  set axi_timer_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_6 ]

  # Create instance: axi_timer_7, and set properties
  set axi_timer_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_7 ]

  # Create instance: axi_timer_8, and set properties
  set axi_timer_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_8 ]

  # Create instance: axi_timer_9, and set properties
  set axi_timer_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_9 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD1_SD1_IO {MIO 10 .. 15} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SPI1_SPI1_IO {MIO 46 .. 51} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART0_UART0_IO {MIO 50 .. 51} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.436} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.436} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.436} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.436} \
CONFIG.PCW_UIPARAM_DDR_CL {6} \
CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {11} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {8192 MBits} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.004} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.004} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.004} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.004} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {32 Bits} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {LPDDR 2} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {LPDDR2_1066} \
CONFIG.PCW_UIPARAM_DDR_T_FAW {50.0} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {42.0} \
CONFIG.PCW_UIPARAM_DDR_T_RC {63.0} \
CONFIG.PCW_UIPARAM_DDR_T_RCD {8} \
CONFIG.PCW_UIPARAM_DDR_T_RP {9} \
CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NONE} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {0} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {10} \
 ] $processing_system7_0_axi_periph

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_timer_1/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_2/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins axi_timer_3/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M04_AXI [get_bd_intf_pins axi_timer_4/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M05_AXI [get_bd_intf_pins axi_timer_5/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M06_AXI [get_bd_intf_pins axi_timer_6/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M07_AXI [get_bd_intf_pins axi_timer_7/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M08_AXI [get_bd_intf_pins axi_timer_8/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M09_AXI [get_bd_intf_pins axi_timer_9/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M09_AXI]

  # Create port connections
  connect_bd_net -net axi_timer_0_pwm0 [get_bd_ports pwm0] [get_bd_pins axi_timer_0/pwm0]
  connect_bd_net -net axi_timer_1_pwm0 [get_bd_ports pwm1] [get_bd_pins axi_timer_1/pwm0]
  connect_bd_net -net axi_timer_2_pwm0 [get_bd_ports pwm2] [get_bd_pins axi_timer_2/pwm0]
  connect_bd_net -net axi_timer_3_pwm0 [get_bd_ports pwm3] [get_bd_pins axi_timer_3/pwm0]
  connect_bd_net -net axi_timer_4_pwm0 [get_bd_ports pwm4] [get_bd_pins axi_timer_4/pwm0]
  connect_bd_net -net axi_timer_5_pwm0 [get_bd_ports pwm5] [get_bd_pins axi_timer_5/pwm0]
  connect_bd_net -net axi_timer_6_pwm0 [get_bd_ports pwm6] [get_bd_pins axi_timer_6/pwm0]
  connect_bd_net -net axi_timer_7_pwm0 [get_bd_ports pwm7] [get_bd_pins axi_timer_7/pwm0]
  connect_bd_net -net axi_timer_8_pwm0 [get_bd_ports pwm8] [get_bd_pins axi_timer_8/pwm0]
  connect_bd_net -net axi_timer_9_pwm0 [get_bd_ports pwm9] [get_bd_pins axi_timer_9/pwm0]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_timer_1/s_axi_aclk] [get_bd_pins axi_timer_2/s_axi_aclk] [get_bd_pins axi_timer_3/s_axi_aclk] [get_bd_pins axi_timer_4/s_axi_aclk] [get_bd_pins axi_timer_5/s_axi_aclk] [get_bd_pins axi_timer_6/s_axi_aclk] [get_bd_pins axi_timer_7/s_axi_aclk] [get_bd_pins axi_timer_8/s_axi_aclk] [get_bd_pins axi_timer_9/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/M06_ACLK] [get_bd_pins processing_system7_0_axi_periph/M07_ACLK] [get_bd_pins processing_system7_0_axi_periph/M08_ACLK] [get_bd_pins processing_system7_0_axi_periph/M09_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_interconnect_aresetn [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins rst_processing_system7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_timer_1/s_axi_aresetn] [get_bd_pins axi_timer_2/s_axi_aresetn] [get_bd_pins axi_timer_3/s_axi_aresetn] [get_bd_pins axi_timer_4/s_axi_aresetn] [get_bd_pins axi_timer_5/s_axi_aresetn] [get_bd_pins axi_timer_6/s_axi_aresetn] [get_bd_pins axi_timer_7/s_axi_aresetn] [get_bd_pins axi_timer_8/s_axi_aresetn] [get_bd_pins axi_timer_9/s_axi_aresetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M06_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M07_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M08_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M09_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x42800000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42810000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_1/S_AXI/Reg] SEG_axi_timer_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42820000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_2/S_AXI/Reg] SEG_axi_timer_2_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42830000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_3/S_AXI/Reg] SEG_axi_timer_3_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42840000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_4/S_AXI/Reg] SEG_axi_timer_4_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42850000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_5/S_AXI/Reg] SEG_axi_timer_5_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42860000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_6/S_AXI/Reg] SEG_axi_timer_6_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42870000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_7/S_AXI/Reg] SEG_axi_timer_7_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42880000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_8/S_AXI/Reg] SEG_axi_timer_8_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42890000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_timer_9/S_AXI/Reg] SEG_axi_timer_9_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port pwm7 -pg 1 -y 1380 -defaultsOSRD
preplace port DDR -pg 1 -y 1650 -defaultsOSRD
preplace port pwm8 -pg 1 -y 1560 -defaultsOSRD
preplace port pwm9 -pg 1 -y 1760 -defaultsOSRD
preplace port pwm0 -pg 1 -y 100 -defaultsOSRD
preplace port pwm1 -pg 1 -y 280 -defaultsOSRD
preplace port pwm2 -pg 1 -y 460 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 910 -defaultsOSRD
preplace port pwm3 -pg 1 -y 640 -defaultsOSRD
preplace port pwm4 -pg 1 -y 820 -defaultsOSRD
preplace port pwm5 -pg 1 -y 1020 -defaultsOSRD
preplace port pwm6 -pg 1 -y 1200 -defaultsOSRD
preplace inst axi_timer_8 -pg 1 -lvl 3 -y 1550 -defaultsOSRD
preplace inst axi_timer_9 -pg 1 -lvl 3 -y 1750 -defaultsOSRD
preplace inst axi_timer_0 -pg 1 -lvl 3 -y 90 -defaultsOSRD
preplace inst axi_timer_1 -pg 1 -lvl 3 -y 270 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 770 -defaultsOSRD
preplace inst axi_timer_2 -pg 1 -lvl 3 -y 450 -defaultsOSRD
preplace inst axi_timer_3 -pg 1 -lvl 3 -y 630 -defaultsOSRD
preplace inst axi_timer_4 -pg 1 -lvl 3 -y 810 -defaultsOSRD
preplace inst axi_timer_5 -pg 1 -lvl 3 -y 1010 -defaultsOSRD
preplace inst axi_timer_6 -pg 1 -lvl 3 -y 1190 -defaultsOSRD
preplace inst axi_timer_7 -pg 1 -lvl 3 -y 1370 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 2 -y 1210 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 1 -y 960 -defaultsOSRD
preplace netloc processing_system7_0_axi_periph_M09_AXI 1 2 1 760
preplace netloc processing_system7_0_DDR 1 1 3 NJ 1650 NJ 1650 NJ
preplace netloc axi_timer_5_pwm0 1 3 1 NJ
preplace netloc processing_system7_0_axi_periph_M08_AXI 1 2 1 790
preplace netloc processing_system7_0_axi_periph_M03_AXI 1 2 1 790
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 2 1 740
preplace netloc rst_processing_system7_0_50M_interconnect_aresetn 1 1 1 440
preplace netloc processing_system7_0_axi_periph_M07_AXI 1 2 1 820
preplace netloc processing_system7_0_M_AXI_GP0 1 1 1 N
preplace netloc axi_timer_4_pwm0 1 3 1 NJ
preplace netloc axi_timer_3_pwm0 1 3 1 NJ
preplace netloc axi_timer_2_pwm0 1 3 1 NJ
preplace netloc processing_system7_0_axi_periph_M05_AXI 1 2 1 750
preplace netloc axi_timer_0_pwm0 1 3 1 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 2 20 680 390
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 1 2 420 1520 810
preplace netloc processing_system7_0_axi_periph_M02_AXI 1 2 1 770
preplace netloc processing_system7_0_axi_periph_M06_AXI 1 2 1 780
preplace netloc processing_system7_0_FIXED_IO 1 1 3 NJ 910 NJ 910 NJ
preplace netloc axi_timer_6_pwm0 1 3 1 NJ
preplace netloc axi_timer_9_pwm0 1 3 1 NJ
preplace netloc axi_timer_1_pwm0 1 3 1 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 3 30 860 410 1510 800
preplace netloc axi_timer_7_pwm0 1 3 1 NJ
preplace netloc processing_system7_0_axi_periph_M04_AXI 1 2 1 820
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 2 1 760
preplace netloc axi_timer_8_pwm0 1 3 1 NJ
levelinfo -pg 1 0 210 590 930 1060 -top 0 -bot 1850
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


