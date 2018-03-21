
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


# Hierarchical cell: axi_pwm
proc create_hier_cell_axi_pwm { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_axi_pwm() - Empty argument(s)!"
     return
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

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  # Create pins
  create_bd_pin -dir O pwm0
  create_bd_pin -dir O pwm1
  create_bd_pin -dir O pwm2
  create_bd_pin -dir O pwm3
  create_bd_pin -dir O pwm4
  create_bd_pin -dir O pwm5
  create_bd_pin -dir O pwm6
  create_bd_pin -dir O pwm7
  create_bd_pin -dir O pwm8
  create_bd_pin -dir O pwm9
  create_bd_pin -dir O pwm10
  create_bd_pin -dir O pwm11
  create_bd_pin -dir O pwm12
  create_bd_pin -dir O pwm13
  create_bd_pin -dir O pwm14
  create_bd_pin -dir O pwm15
  create_bd_pin -dir O pwm16
  create_bd_pin -dir O pwm17
  create_bd_pin -dir O pwm18
  create_bd_pin -dir O pwm19
  create_bd_pin -dir O pwm20
  create_bd_pin -dir O pwm21
  create_bd_pin -dir O pwm22
  create_bd_pin -dir O pwm23
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn

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

  # Create instance: axi_timer_10, and set properties
  set axi_timer_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_10 ]

  # Create instance: axi_timer_11, and set properties
  set axi_timer_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_11 ]

  # Create instance: axi_timer_12, and set properties
  set axi_timer_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_12 ]

  # Create instance: axi_timer_13, and set properties
  set axi_timer_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_13 ]

  # Create instance: axi_timer_14, and set properties
  set axi_timer_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_14 ]

  # Create instance: axi_timer_15, and set properties
  set axi_timer_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_15 ]

  # Create instance: axi_timer_16, and set properties
  set axi_timer_16 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_16 ]

  # Create instance: axi_timer_17, and set properties
  set axi_timer_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_17 ]

  # Create instance: axi_timer_18, and set properties
  set axi_timer_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_18 ]

  # Create instance: axi_timer_19, and set properties
  set axi_timer_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_19 ]

  # Create instance: axi_timer_20, and set properties
  set axi_timer_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_20 ]

  # Create instance: axi_timer_21, and set properties
  set axi_timer_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_21 ]

  # Create instance: axi_timer_22, and set properties
  set axi_timer_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_22 ]

  # Create instance: axi_timer_23, and set properties
  set axi_timer_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_23 ]

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {25} \
CONFIG.NUM_SI {1} \
 ] $processing_system7_0_axi_periph

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
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
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M10_AXI [get_bd_intf_pins axi_timer_10/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M11_AXI [get_bd_intf_pins axi_timer_11/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M12_AXI [get_bd_intf_pins axi_timer_12/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M13_AXI [get_bd_intf_pins axi_timer_13/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M14_AXI [get_bd_intf_pins axi_timer_14/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M15_AXI [get_bd_intf_pins axi_timer_15/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M15_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M16_AXI [get_bd_intf_pins axi_timer_16/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M16_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M17_AXI [get_bd_intf_pins axi_timer_17/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M18_AXI [get_bd_intf_pins axi_timer_18/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M18_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M19_AXI [get_bd_intf_pins axi_timer_19/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M19_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M20_AXI [get_bd_intf_pins axi_timer_20/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M20_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M21_AXI [get_bd_intf_pins axi_timer_21/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M21_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M22_AXI [get_bd_intf_pins axi_timer_22/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M22_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M23_AXI [get_bd_intf_pins axi_timer_23/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M23_AXI]

  # Create port connections
  connect_bd_net -net axi_timer_0_pwm0 [get_bd_pins pwm0] [get_bd_pins axi_timer_0/pwm0]
  connect_bd_net -net axi_timer_10_pwm0 [get_bd_pins pwm10] [get_bd_pins axi_timer_10/pwm0]
  connect_bd_net -net axi_timer_11_pwm0 [get_bd_pins pwm11] [get_bd_pins axi_timer_11/pwm0]
  connect_bd_net -net axi_timer_12_pwm0 [get_bd_pins pwm12] [get_bd_pins axi_timer_12/pwm0]
  connect_bd_net -net axi_timer_13_pwm0 [get_bd_pins pwm13] [get_bd_pins axi_timer_13/pwm0]
  connect_bd_net -net axi_timer_14_pwm0 [get_bd_pins pwm14] [get_bd_pins axi_timer_14/pwm0]
  connect_bd_net -net axi_timer_15_pwm0 [get_bd_pins pwm15] [get_bd_pins axi_timer_15/pwm0]
  connect_bd_net -net axi_timer_16_pwm0 [get_bd_pins pwm16] [get_bd_pins axi_timer_16/pwm0]
  connect_bd_net -net axi_timer_17_pwm0 [get_bd_pins pwm17] [get_bd_pins axi_timer_17/pwm0]
  connect_bd_net -net axi_timer_18_pwm0 [get_bd_pins pwm18] [get_bd_pins axi_timer_18/pwm0]
  connect_bd_net -net axi_timer_19_pwm0 [get_bd_pins pwm19] [get_bd_pins axi_timer_19/pwm0]
  connect_bd_net -net axi_timer_1_pwm0 [get_bd_pins pwm1] [get_bd_pins axi_timer_1/pwm0]
  connect_bd_net -net axi_timer_20_pwm0 [get_bd_pins pwm20] [get_bd_pins axi_timer_20/pwm0]
  connect_bd_net -net axi_timer_21_pwm0 [get_bd_pins pwm21] [get_bd_pins axi_timer_21/pwm0]
  connect_bd_net -net axi_timer_22_pwm0 [get_bd_pins pwm22] [get_bd_pins axi_timer_22/pwm0]
  connect_bd_net -net axi_timer_23_pwm0 [get_bd_pins pwm23] [get_bd_pins axi_timer_23/pwm0]
  connect_bd_net -net axi_timer_2_pwm0 [get_bd_pins pwm2] [get_bd_pins axi_timer_2/pwm0]
  connect_bd_net -net axi_timer_3_pwm0 [get_bd_pins pwm3] [get_bd_pins axi_timer_3/pwm0]
  connect_bd_net -net axi_timer_4_pwm0 [get_bd_pins pwm4] [get_bd_pins axi_timer_4/pwm0]
  connect_bd_net -net axi_timer_5_pwm0 [get_bd_pins pwm5] [get_bd_pins axi_timer_5/pwm0]
  connect_bd_net -net axi_timer_6_pwm0 [get_bd_pins pwm6] [get_bd_pins axi_timer_6/pwm0]
  connect_bd_net -net axi_timer_7_pwm0 [get_bd_pins pwm7] [get_bd_pins axi_timer_7/pwm0]
  connect_bd_net -net axi_timer_8_pwm0 [get_bd_pins pwm8] [get_bd_pins axi_timer_8/pwm0]
  connect_bd_net -net axi_timer_9_pwm0 [get_bd_pins pwm9] [get_bd_pins axi_timer_9/pwm0]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_timer_1/s_axi_aclk] [get_bd_pins axi_timer_10/s_axi_aclk] [get_bd_pins axi_timer_11/s_axi_aclk] [get_bd_pins axi_timer_12/s_axi_aclk] [get_bd_pins axi_timer_13/s_axi_aclk] [get_bd_pins axi_timer_14/s_axi_aclk] [get_bd_pins axi_timer_15/s_axi_aclk] [get_bd_pins axi_timer_16/s_axi_aclk] [get_bd_pins axi_timer_17/s_axi_aclk] [get_bd_pins axi_timer_18/s_axi_aclk] [get_bd_pins axi_timer_19/s_axi_aclk] [get_bd_pins axi_timer_2/s_axi_aclk] [get_bd_pins axi_timer_20/s_axi_aclk] [get_bd_pins axi_timer_21/s_axi_aclk] [get_bd_pins axi_timer_22/s_axi_aclk] [get_bd_pins axi_timer_23/s_axi_aclk] [get_bd_pins axi_timer_3/s_axi_aclk] [get_bd_pins axi_timer_4/s_axi_aclk] [get_bd_pins axi_timer_5/s_axi_aclk] [get_bd_pins axi_timer_6/s_axi_aclk] [get_bd_pins axi_timer_7/s_axi_aclk] [get_bd_pins axi_timer_8/s_axi_aclk] [get_bd_pins axi_timer_9/s_axi_aclk] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/M06_ACLK] [get_bd_pins processing_system7_0_axi_periph/M07_ACLK] [get_bd_pins processing_system7_0_axi_periph/M08_ACLK] [get_bd_pins processing_system7_0_axi_periph/M09_ACLK] [get_bd_pins processing_system7_0_axi_periph/M10_ACLK] [get_bd_pins processing_system7_0_axi_periph/M11_ACLK] [get_bd_pins processing_system7_0_axi_periph/M12_ACLK] [get_bd_pins processing_system7_0_axi_periph/M13_ACLK] [get_bd_pins processing_system7_0_axi_periph/M14_ACLK] [get_bd_pins processing_system7_0_axi_periph/M15_ACLK] [get_bd_pins processing_system7_0_axi_periph/M16_ACLK] [get_bd_pins processing_system7_0_axi_periph/M17_ACLK] [get_bd_pins processing_system7_0_axi_periph/M18_ACLK] [get_bd_pins processing_system7_0_axi_periph/M19_ACLK] [get_bd_pins processing_system7_0_axi_periph/M20_ACLK] [get_bd_pins processing_system7_0_axi_periph/M21_ACLK] [get_bd_pins processing_system7_0_axi_periph/M22_ACLK] [get_bd_pins processing_system7_0_axi_periph/M23_ACLK] [get_bd_pins processing_system7_0_axi_periph/M24_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_timer_1/s_axi_aresetn] [get_bd_pins axi_timer_10/s_axi_aresetn] [get_bd_pins axi_timer_11/s_axi_aresetn] [get_bd_pins axi_timer_12/s_axi_aresetn] [get_bd_pins axi_timer_13/s_axi_aresetn] [get_bd_pins axi_timer_14/s_axi_aresetn] [get_bd_pins axi_timer_15/s_axi_aresetn] [get_bd_pins axi_timer_16/s_axi_aresetn] [get_bd_pins axi_timer_17/s_axi_aresetn] [get_bd_pins axi_timer_18/s_axi_aresetn] [get_bd_pins axi_timer_19/s_axi_aresetn] [get_bd_pins axi_timer_2/s_axi_aresetn] [get_bd_pins axi_timer_20/s_axi_aresetn] [get_bd_pins axi_timer_21/s_axi_aresetn] [get_bd_pins axi_timer_22/s_axi_aresetn] [get_bd_pins axi_timer_23/s_axi_aresetn] [get_bd_pins axi_timer_3/s_axi_aresetn] [get_bd_pins axi_timer_4/s_axi_aresetn] [get_bd_pins axi_timer_5/s_axi_aresetn] [get_bd_pins axi_timer_6/s_axi_aresetn] [get_bd_pins axi_timer_7/s_axi_aresetn] [get_bd_pins axi_timer_8/s_axi_aresetn] [get_bd_pins axi_timer_9/s_axi_aresetn] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M06_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M07_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M08_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M09_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M10_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M11_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M12_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M13_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M14_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M15_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M16_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M17_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M18_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M19_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M20_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M21_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M22_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M23_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M24_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN]

  # Perform GUI Layout
  regenerate_bd_layout -hierarchy [get_bd_cells /axi_pwm] -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port pwm7 -pg 1 -y 1360 -defaultsOSRD
preplace port s_axi_aclk -pg 1 -y 1680 -defaultsOSRD
preplace port pwm8 -pg 1 -y 1540 -defaultsOSRD
preplace port pwm20 -pg 1 -y 3820 -defaultsOSRD
preplace port pwm9 -pg 1 -y 1720 -defaultsOSRD
preplace port pwm21 -pg 1 -y 3980 -defaultsOSRD
preplace port S00_AXI -pg 1 -y 1660 -defaultsOSRD
preplace port pwm22 -pg 1 -y 4160 -defaultsOSRD
preplace port pwm10 -pg 1 -y 1900 -defaultsOSRD
preplace port pwm23 -pg 1 -y 4340 -defaultsOSRD
preplace port pwm11 -pg 1 -y 2080 -defaultsOSRD
preplace port pwm12 -pg 1 -y 2260 -defaultsOSRD
preplace port pwm13 -pg 1 -y 2440 -defaultsOSRD
preplace port pwm0 -pg 1 -y 10 -defaultsOSRD
preplace port pwm14 -pg 1 -y 2620 -defaultsOSRD
preplace port pwm1 -pg 1 -y 280 -defaultsOSRD
preplace port pwm15 -pg 1 -y 2800 -defaultsOSRD
preplace port pwm2 -pg 1 -y 460 -defaultsOSRD
preplace port pwm16 -pg 1 -y 2960 -defaultsOSRD
preplace port pwm3 -pg 1 -y 640 -defaultsOSRD
preplace port s_axi_aresetn -pg 1 -y 1700 -defaultsOSRD
preplace port pwm4 -pg 1 -y 820 -defaultsOSRD
preplace port pwm17 -pg 1 -y 3270 -defaultsOSRD
preplace port pwm5 -pg 1 -y 1000 -defaultsOSRD
preplace port pwm18 -pg 1 -y 3450 -defaultsOSRD
preplace port pwm6 -pg 1 -y 1180 -defaultsOSRD
preplace port pwm19 -pg 1 -y 3620 -defaultsOSRD
preplace inst axi_timer_12 -pg 1 -lvl 2 -y 2240 -defaultsOSRD
preplace inst axi_timer_8 -pg 1 -lvl 2 -y 1520 -defaultsOSRD
preplace inst axi_timer_13 -pg 1 -lvl 2 -y 2420 -defaultsOSRD
preplace inst axi_timer_9 -pg 1 -lvl 2 -y 1700 -defaultsOSRD
preplace inst axi_timer_14 -pg 1 -lvl 2 -y 2600 -defaultsOSRD
preplace inst axi_timer_15 -pg 1 -lvl 2 -y 2780 -defaultsOSRD
preplace inst axi_timer_16 -pg 1 -lvl 2 -y 2960 -defaultsOSRD
preplace inst axi_timer_17 -pg 1 -lvl 2 -y 3240 -defaultsOSRD
preplace inst axi_timer_0 -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace inst axi_timer_18 -pg 1 -lvl 2 -y 3440 -defaultsOSRD
preplace inst axi_timer_1 -pg 1 -lvl 2 -y 260 -defaultsOSRD
preplace inst axi_timer_19 -pg 1 -lvl 2 -y 3620 -defaultsOSRD
preplace inst axi_timer_2 -pg 1 -lvl 2 -y 440 -defaultsOSRD
preplace inst axi_timer_3 -pg 1 -lvl 2 -y 620 -defaultsOSRD
preplace inst axi_timer_20 -pg 1 -lvl 2 -y 3800 -defaultsOSRD
preplace inst axi_timer_4 -pg 1 -lvl 2 -y 800 -defaultsOSRD
preplace inst axi_timer_21 -pg 1 -lvl 2 -y 3980 -defaultsOSRD
preplace inst axi_timer_5 -pg 1 -lvl 2 -y 980 -defaultsOSRD
preplace inst axi_timer_22 -pg 1 -lvl 2 -y 4160 -defaultsOSRD
preplace inst axi_timer_10 -pg 1 -lvl 2 -y 1880 -defaultsOSRD
preplace inst axi_timer_6 -pg 1 -lvl 2 -y 1160 -defaultsOSRD
preplace inst axi_timer_23 -pg 1 -lvl 2 -y 4340 -defaultsOSRD
preplace inst axi_timer_11 -pg 1 -lvl 2 -y 2060 -defaultsOSRD
preplace inst axi_timer_7 -pg 1 -lvl 2 -y 1340 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 1 -y 2200 -defaultsOSRD
preplace netloc processing_system7_0_axi_periph_M09_AXI 1 1 1 400
preplace netloc axi_timer_5_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M22_AXI 1 1 1 300
preplace netloc processing_system7_0_axi_periph_M16_AXI 1 1 1 390
preplace netloc axi_timer_21_pwm0 1 2 1 NJ
preplace netloc axi_timer_20_pwm0 1 2 1 NJ
preplace netloc axi_timer_17_pwm0 1 2 1 NJ
preplace netloc s_axi_aclk_1 1 0 2 -60 1590 360
preplace netloc processing_system7_0_axi_periph_M15_AXI 1 1 1 400
preplace netloc processing_system7_0_axi_periph_M08_AXI 1 1 1 390
preplace netloc processing_system7_0_axi_periph_M03_AXI 1 1 1 320
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 1 1 290
preplace netloc axi_timer_22_pwm0 1 2 1 NJ
preplace netloc axi_timer_18_pwm0 1 2 1 NJ
preplace netloc s_axi_aresetn_1 1 0 2 -50 1600 370
preplace netloc processing_system7_0_axi_periph_M18_AXI 1 1 1 350
preplace netloc processing_system7_0_axi_periph_M17_AXI 1 1 1 380
preplace netloc processing_system7_0_axi_periph_M12_AXI 1 1 1 420
preplace netloc processing_system7_0_axi_periph_M11_AXI 1 1 1 420
preplace netloc processing_system7_0_axi_periph_M07_AXI 1 1 1 380
preplace netloc axi_timer_4_pwm0 1 2 1 NJ
preplace netloc axi_timer_16_pwm0 1 2 1 NJ
preplace netloc axi_timer_13_pwm0 1 2 1 NJ
preplace netloc axi_timer_3_pwm0 1 2 1 NJ
preplace netloc axi_timer_2_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M05_AXI 1 1 1 340
preplace netloc axi_timer_0_pwm0 1 2 1 NJ
preplace netloc axi_timer_19_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M23_AXI 1 1 1 290
preplace netloc processing_system7_0_axi_periph_M21_AXI 1 1 1 310
preplace netloc processing_system7_0_axi_periph_M19_AXI 1 1 1 340
preplace netloc processing_system7_0_axi_periph_M02_AXI 1 1 1 310
preplace netloc axi_timer_14_pwm0 1 2 1 NJ
preplace netloc axi_timer_12_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M06_AXI 1 1 1 350
preplace netloc processing_system7_0_axi_periph_M14_AXI 1 1 1 410
preplace netloc S00_AXI_1 1 0 1 NJ
preplace netloc axi_timer_23_pwm0 1 2 1 NJ
preplace netloc axi_timer_6_pwm0 1 2 1 NJ
preplace netloc axi_timer_10_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M10_AXI 1 1 1 410
preplace netloc axi_timer_9_pwm0 1 2 1 NJ
preplace netloc axi_timer_11_pwm0 1 2 1 NJ
preplace netloc axi_timer_1_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M13_AXI 1 1 1 420
preplace netloc axi_timer_7_pwm0 1 2 1 NJ
preplace netloc processing_system7_0_axi_periph_M20_AXI 1 1 1 330
preplace netloc processing_system7_0_axi_periph_M04_AXI 1 1 1 330
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 1 1 300
preplace netloc axi_timer_8_pwm0 1 2 1 NJ
preplace netloc axi_timer_15_pwm0 1 2 1 NJ
levelinfo -pg 1 -80 160 627 800 -top -10 -bot 4620
",
}

  # Restore current instance
  current_bd_instance $oldCurInst
}


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
  set pwm10 [ create_bd_port -dir O pwm10 ]
  set pwm11 [ create_bd_port -dir O pwm11 ]
  set pwm12 [ create_bd_port -dir O pwm12 ]
  set pwm13 [ create_bd_port -dir O pwm13 ]
  set pwm14 [ create_bd_port -dir O pwm14 ]
  set pwm15 [ create_bd_port -dir O pwm15 ]
  set pwm16 [ create_bd_port -dir O pwm16 ]
  set pwm17 [ create_bd_port -dir O pwm17 ]
  set pwm18 [ create_bd_port -dir O pwm18 ]
  set pwm19 [ create_bd_port -dir O pwm19 ]
  set pwm20 [ create_bd_port -dir O pwm20 ]
  set pwm21 [ create_bd_port -dir O pwm21 ]
  set pwm22 [ create_bd_port -dir O pwm22 ]
  set pwm23 [ create_bd_port -dir O pwm23 ]

  # Create instance: axi_pwm
  create_hier_cell_axi_pwm [current_bd_instance .] axi_pwm

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
CONFIG.PCW_USE_M_AXI_GP1 {0} \
 ] $processing_system7_0

  # Create instance: rst_processing_system7_0_50M, and set properties
  set rst_processing_system7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_processing_system7_0_50M ]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_pwm/S00_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]

  # Create port connections
  connect_bd_net -net axi_pwm_pwm0 [get_bd_ports pwm0] [get_bd_pins axi_pwm/pwm0]
  connect_bd_net -net axi_pwm_pwm1 [get_bd_ports pwm1] [get_bd_pins axi_pwm/pwm1]
  connect_bd_net -net axi_pwm_pwm2 [get_bd_ports pwm2] [get_bd_pins axi_pwm/pwm2]
  connect_bd_net -net axi_pwm_pwm3 [get_bd_ports pwm3] [get_bd_pins axi_pwm/pwm3]
  connect_bd_net -net axi_pwm_pwm4 [get_bd_ports pwm4] [get_bd_pins axi_pwm/pwm4]
  connect_bd_net -net axi_pwm_pwm5 [get_bd_ports pwm5] [get_bd_pins axi_pwm/pwm5]
  connect_bd_net -net axi_pwm_pwm6 [get_bd_ports pwm6] [get_bd_pins axi_pwm/pwm6]
  connect_bd_net -net axi_pwm_pwm7 [get_bd_ports pwm7] [get_bd_pins axi_pwm/pwm7]
  connect_bd_net -net axi_pwm_pwm8 [get_bd_ports pwm8] [get_bd_pins axi_pwm/pwm8]
  connect_bd_net -net axi_pwm_pwm9 [get_bd_ports pwm9] [get_bd_pins axi_pwm/pwm9]
  connect_bd_net -net axi_pwm_pwm10 [get_bd_ports pwm10] [get_bd_pins axi_pwm/pwm10]
  connect_bd_net -net axi_pwm_pwm11 [get_bd_ports pwm11] [get_bd_pins axi_pwm/pwm11]
  connect_bd_net -net axi_pwm_pwm12 [get_bd_ports pwm12] [get_bd_pins axi_pwm/pwm12]
  connect_bd_net -net axi_pwm_pwm13 [get_bd_ports pwm13] [get_bd_pins axi_pwm/pwm13]
  connect_bd_net -net axi_pwm_pwm14 [get_bd_ports pwm14] [get_bd_pins axi_pwm/pwm14]
  connect_bd_net -net axi_pwm_pwm15 [get_bd_ports pwm15] [get_bd_pins axi_pwm/pwm15]
  connect_bd_net -net axi_pwm_pwm16 [get_bd_ports pwm16] [get_bd_pins axi_pwm/pwm16]
  connect_bd_net -net axi_pwm_pwm17 [get_bd_ports pwm17] [get_bd_pins axi_pwm/pwm17]
  connect_bd_net -net axi_pwm_pwm18 [get_bd_ports pwm18] [get_bd_pins axi_pwm/pwm18]
  connect_bd_net -net axi_pwm_pwm19 [get_bd_ports pwm19] [get_bd_pins axi_pwm/pwm19]
  connect_bd_net -net axi_pwm_pwm20 [get_bd_ports pwm20] [get_bd_pins axi_pwm/pwm20]
  connect_bd_net -net axi_pwm_pwm21 [get_bd_ports pwm21] [get_bd_pins axi_pwm/pwm21]
  connect_bd_net -net axi_pwm_pwm22 [get_bd_ports pwm22] [get_bd_pins axi_pwm/pwm22]
  connect_bd_net -net axi_pwm_pwm23 [get_bd_ports pwm23] [get_bd_pins axi_pwm/pwm23]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_pwm/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins rst_processing_system7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_processing_system7_0_50M/ext_reset_in]
  connect_bd_net -net rst_processing_system7_0_50M_peripheral_aresetn [get_bd_pins axi_pwm/s_axi_aresetn] [get_bd_pins rst_processing_system7_0_50M/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x42800000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x428A0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_10/S_AXI/Reg] SEG_axi_timer_10_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x428B0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_11/S_AXI/Reg] SEG_axi_timer_11_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x428C0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_12/S_AXI/Reg] SEG_axi_timer_12_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x428D0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_13/S_AXI/Reg] SEG_axi_timer_13_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x428E0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_14/S_AXI/Reg] SEG_axi_timer_14_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x428F0000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_15/S_AXI/Reg] SEG_axi_timer_15_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42900000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_16/S_AXI/Reg] SEG_axi_timer_16_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42910000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_17/S_AXI/Reg] SEG_axi_timer_17_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42920000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_18/S_AXI/Reg] SEG_axi_timer_18_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42930000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_19/S_AXI/Reg] SEG_axi_timer_19_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42810000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_1/S_AXI/Reg] SEG_axi_timer_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42940000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_20/S_AXI/Reg] SEG_axi_timer_20_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42950000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_21/S_AXI/Reg] SEG_axi_timer_21_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42960000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_22/S_AXI/Reg] SEG_axi_timer_22_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42970000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_23/S_AXI/Reg] SEG_axi_timer_23_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42820000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_2/S_AXI/Reg] SEG_axi_timer_2_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42830000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_3/S_AXI/Reg] SEG_axi_timer_3_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42840000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_4/S_AXI/Reg] SEG_axi_timer_4_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42850000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_5/S_AXI/Reg] SEG_axi_timer_5_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42860000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_6/S_AXI/Reg] SEG_axi_timer_6_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42870000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_7/S_AXI/Reg] SEG_axi_timer_7_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42880000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_8/S_AXI/Reg] SEG_axi_timer_8_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x42890000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_pwm/axi_timer_9/S_AXI/Reg] SEG_axi_timer_9_Reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port pwm7 -pg 1 -y 560 -defaultsOSRD
preplace port DDR -pg 1 -y 60 -defaultsOSRD
preplace port pwm20 -pg 1 -y 420 -defaultsOSRD
preplace port pwm8 -pg 1 -y 580 -defaultsOSRD
preplace port pwm21 -pg 1 -y 440 -defaultsOSRD
preplace port pwm9 -pg 1 -y 600 -defaultsOSRD
preplace port pwm22 -pg 1 -y 520 -defaultsOSRD
preplace port pwm10 -pg 1 -y 220 -defaultsOSRD
preplace port pwm23 -pg 1 -y 540 -defaultsOSRD
preplace port pwm11 -pg 1 -y 240 -defaultsOSRD
preplace port pwm12 -pg 1 -y 260 -defaultsOSRD
preplace port pwm13 -pg 1 -y 280 -defaultsOSRD
preplace port pwm0 -pg 1 -y 140 -defaultsOSRD
preplace port pwm14 -pg 1 -y 300 -defaultsOSRD
preplace port pwm1 -pg 1 -y 160 -defaultsOSRD
preplace port pwm15 -pg 1 -y 320 -defaultsOSRD
preplace port pwm2 -pg 1 -y 180 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 80 -defaultsOSRD
preplace port pwm16 -pg 1 -y 340 -defaultsOSRD
preplace port pwm3 -pg 1 -y 200 -defaultsOSRD
preplace port pwm17 -pg 1 -y 360 -defaultsOSRD
preplace port pwm4 -pg 1 -y 460 -defaultsOSRD
preplace port pwm18 -pg 1 -y 380 -defaultsOSRD
preplace port pwm5 -pg 1 -y 480 -defaultsOSRD
preplace port pwm19 -pg 1 -y 400 -defaultsOSRD
preplace port pwm6 -pg 1 -y 500 -defaultsOSRD
preplace inst rst_processing_system7_0_50M -pg 1 -lvl 1 -y 290 -defaultsOSRD
preplace inst axi_pwm -pg 1 -lvl 2 -y 370 -defaultsOSRD -resize 300 546
preplace inst processing_system7_0 -pg 1 -lvl 1 -y 90 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 1 2 NJ 60 NJ
preplace netloc axi_pwm_pwm17 1 2 1 NJ
preplace netloc axi_pwm_pwm2 1 2 1 NJ
preplace netloc axi_pwm_pwm18 1 2 1 NJ
preplace netloc axi_pwm_pwm3 1 2 1 NJ
preplace netloc axi_pwm_pwm19 1 2 1 NJ
preplace netloc axi_pwm_pwm4 1 2 1 NJ
preplace netloc axi_pwm_pwm20 1 2 1 NJ
preplace netloc axi_pwm_pwm5 1 2 1 NJ
preplace netloc axi_pwm_pwm21 1 2 1 NJ
preplace netloc axi_pwm_pwm6 1 2 1 NJ
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 2 30 200 390
preplace netloc axi_pwm_pwm22 1 2 1 NJ
preplace netloc axi_pwm_pwm7 1 2 1 NJ
preplace netloc rst_processing_system7_0_50M_peripheral_aresetn 1 1 1 390
preplace netloc axi_pwm_pwm23 1 2 1 NJ
preplace netloc axi_pwm_pwm10 1 2 1 NJ
preplace netloc axi_pwm_pwm8 1 2 1 NJ
preplace netloc axi_pwm_pwm11 1 2 1 NJ
preplace netloc axi_pwm_pwm9 1 2 1 NJ
preplace netloc S00_AXI_1 1 1 1 410
preplace netloc processing_system7_0_FIXED_IO 1 1 2 NJ 80 NJ
preplace netloc axi_pwm_pwm12 1 2 1 NJ
preplace netloc axi_pwm_pwm13 1 2 1 NJ
preplace netloc axi_pwm_pwm14 1 2 1 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 2 20 190 400
preplace netloc axi_pwm_pwm15 1 2 1 NJ
preplace netloc axi_pwm_pwm0 1 2 1 NJ
preplace netloc axi_pwm_pwm16 1 2 1 NJ
preplace netloc axi_pwm_pwm1 1 2 1 NJ
levelinfo -pg 1 0 210 580 770 -top 0 -bot 650
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


