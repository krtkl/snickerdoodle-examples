###############################################################################
#
# Constraints file for snickerdoodle One
#
# Copyright (c) 2018 krtkl inc.
#
###############################################################################

#------------------------------------------------------------------------------
# JA1 Connector
#------------------------------------------------------------------------------
set_property PACKAGE_PIN G14 [get_ports {GPIO0_tri_io[24]}];        # JA1.4
set_property PACKAGE_PIN E18 [get_ports {GPIO0_tri_io[8]}];         # JA1.5
set_property PACKAGE_PIN D20 [get_ports {GPIO0_tri_io[11]}];        # JA1.6
set_property PACKAGE_PIN E19 [get_ports {GPIO0_tri_io[9]}];         # JA1.7
set_property PACKAGE_PIN D19 [get_ports {GPIO0_tri_io[10]}];        # JA1.8
set_property PACKAGE_PIN F16 [get_ports {GPIO0_tri_io[12]}];        # JA1.11
set_property PACKAGE_PIN B20 [get_ports {GPIO0_tri_io[15]}];        # JA1.12
set_property PACKAGE_PIN F17 [get_ports {GPIO0_tri_io[13]}];        # JA1.13
set_property PACKAGE_PIN C20 [get_ports {GPIO0_tri_io[14]}];        # JA1.14
set_property PACKAGE_PIN E17 [get_ports {GPIO0_tri_io[20]}];        # JA1.17
set_property PACKAGE_PIN A20 [get_ports {GPIO0_tri_io[17]}];        # JA1.18
set_property PACKAGE_PIN D18 [get_ports {GPIO0_tri_io[21]}];        # JA1.19
set_property PACKAGE_PIN B19 [get_ports {GPIO0_tri_io[16]}];        # JA1.20
set_property PACKAGE_PIN F19 [get_ports {GPIO0_tri_io[18]}];        # JA1.23
set_property PACKAGE_PIN G20 [get_ports {GPIO0_tri_io[1]}];         # JA1.24
set_property PACKAGE_PIN F20 [get_ports {GPIO0_tri_io[19]}];        # JA1.25
set_property PACKAGE_PIN G19 [get_ports {GPIO0_tri_io[0]}];         # JA1.26
set_property PACKAGE_PIN J20 [get_ports {GPIO0_tri_io[2]}];         # JA1.29
set_property PACKAGE_PIN G18 [get_ports {GPIO0_tri_io[5]}];         # JA1.30
set_property PACKAGE_PIN H20 [get_ports {GPIO0_tri_io[3]}];         # JA1.31
set_property PACKAGE_PIN G17 [get_ports {GPIO0_tri_io[4]}];         # JA1.32
set_property PACKAGE_PIN J18 [get_ports {GPIO0_tri_io[6]}];         # JA1.35
set_property PACKAGE_PIN H17 [get_ports {GPIO0_tri_io[23]}];        # JA1.36
set_property PACKAGE_PIN H18 [get_ports {GPIO0_tri_io[7]}];         # JA1.37
set_property PACKAGE_PIN H16 [get_ports {GPIO0_tri_io[22]}];        # JA1.38

set_property IOSTANDARD LVCMOS33 [list [get_ports {GPIO0_tri_io[*]}]]

#------------------------------------------------------------------------------
# JA2 Connector
#------------------------------------------------------------------------------
set_property PACKAGE_PIN J15 [get_ports {GPIO1_tri_io[24]}];        # JA2.4
set_property PACKAGE_PIN L14 [get_ports {GPIO1_tri_io[8]}];         # JA2.5
set_property PACKAGE_PIN J16 [get_ports {GPIO1_tri_io[11]}];        # JA2.6
set_property PACKAGE_PIN L15 [get_ports {GPIO1_tri_io[9]}];         # JA2.7
set_property PACKAGE_PIN K16 [get_ports {GPIO1_tri_io[10]}];        # JA2.8
set_property PACKAGE_PIN M14 [get_ports {GPIO1_tri_io[12]}];        # JA2.11
set_property PACKAGE_PIN G15 [get_ports {GPIO1_tri_io[15]}];        # JA2.12
set_property PACKAGE_PIN M15 [get_ports {GPIO1_tri_io[13]}];        # JA2.13
set_property PACKAGE_PIN H15 [get_ports {GPIO1_tri_io[14]}];        # JA2.14
set_property PACKAGE_PIN N15 [get_ports {GPIO1_tri_io[20]}];        # JA2.17
set_property PACKAGE_PIN J14 [get_ports {GPIO1_tri_io[17]}];        # JA2.18
set_property PACKAGE_PIN N16 [get_ports {GPIO1_tri_io[21]}];        # JA2.19
set_property PACKAGE_PIN K14 [get_ports {GPIO1_tri_io[16]}];        # JA2.20
set_property PACKAGE_PIN L19 [get_ports {GPIO1_tri_io[18]}];        # JA2.23
set_property PACKAGE_PIN J19 [get_ports {GPIO1_tri_io[1]}];         # JA2.24
set_property PACKAGE_PIN L20 [get_ports {GPIO1_tri_io[19]}];        # JA2.25
set_property PACKAGE_PIN K19 [get_ports {GPIO1_tri_io[0]}];         # JA2.26
set_property PACKAGE_PIN M17 [get_ports {GPIO1_tri_io[2]}];         # JA2.29
set_property PACKAGE_PIN M20 [get_ports {GPIO1_tri_io[5]}];         # JA2.30
set_property PACKAGE_PIN M18 [get_ports {GPIO1_tri_io[3]}];         # JA2.31
set_property PACKAGE_PIN M19 [get_ports {GPIO1_tri_io[4]}];         # JA2.32
set_property PACKAGE_PIN L16 [get_ports {GPIO1_tri_io[6]}];         # JA2.35
set_property PACKAGE_PIN K18 [get_ports {GPIO1_tri_io[23]}];        # JA2.36
set_property PACKAGE_PIN L17 [get_ports {GPIO1_tri_io[7]}];         # JA2.37
set_property PACKAGE_PIN K17 [get_ports {GPIO1_tri_io[22]}];        # JA2.38

set_property IOSTANDARD LVCMOS33 [list [get_ports {GPIO1_tri_io[*]}]]

#------------------------------------------------------------------------------
# JB1 Connector
#------------------------------------------------------------------------------
set_property PACKAGE_PIN T19 [get_ports {GPIO2_tri_io[24]}];        # JB1.4
set_property PACKAGE_PIN T11 [get_ports {GPIO2_tri_io[8]}];         # JB1.5
set_property PACKAGE_PIN U12 [get_ports {GPIO2_tri_io[11]}];        # JB1.6
set_property PACKAGE_PIN T10 [get_ports {GPIO2_tri_io[9]}];         # JB1.7
set_property PACKAGE_PIN T12 [get_ports {GPIO2_tri_io[10]}];        # JB1.8
set_property PACKAGE_PIN P14 [get_ports {GPIO2_tri_io[12]}];        # JB1.11
set_property PACKAGE_PIN W13 [get_ports {GPIO2_tri_io[15]}];        # JB1.12
set_property PACKAGE_PIN R14 [get_ports {GPIO2_tri_io[13]}];        # JB1.13
set_property PACKAGE_PIN V12 [get_ports {GPIO2_tri_io[14]}];        # JB1.14
set_property PACKAGE_PIN U13 [get_ports {GPIO2_tri_io[20]}];        # JB1.17
set_property PACKAGE_PIN T15 [get_ports {GPIO2_tri_io[17]}];        # JB1.18
set_property PACKAGE_PIN V13 [get_ports {GPIO2_tri_io[21]}];        # JB1.19
set_property PACKAGE_PIN T14 [get_ports {GPIO2_tri_io[16]}];        # JB1.20
set_property PACKAGE_PIN T16 [get_ports {GPIO2_tri_io[18]}];        # JB1.23
set_property PACKAGE_PIN Y17 [get_ports {GPIO2_tri_io[1]}];         # JB1.24
set_property PACKAGE_PIN U17 [get_ports {GPIO2_tri_io[19]}];        # JB1.25
set_property PACKAGE_PIN Y16 [get_ports {GPIO2_tri_io[0]}];         # JB1.26
set_property PACKAGE_PIN W14 [get_ports {GPIO2_tri_io[2]}];         # JB1.29
set_property PACKAGE_PIN W15 [get_ports {GPIO2_tri_io[5]}];         # JB1.30
set_property PACKAGE_PIN Y14 [get_ports {GPIO2_tri_io[3]}];         # JB1.31
set_property PACKAGE_PIN V15 [get_ports {GPIO2_tri_io[4]}];         # JB1.32
set_property PACKAGE_PIN U14 [get_ports {GPIO2_tri_io[6]}];         # JB1.35
set_property PACKAGE_PIN U19 [get_ports {GPIO2_tri_io[23]}];        # JB1.36
set_property PACKAGE_PIN U15 [get_ports {GPIO2_tri_io[7]}];         # JB1.37
set_property PACKAGE_PIN U18 [get_ports {GPIO2_tri_io[22]}];        # JB1.38

set_property IOSTANDARD LVCMOS33 [list [get_ports {GPIO2_tri_io[*]}]]

#------------------------------------------------------------------------------
# JB2 Connector
#------------------------------------------------------------------------------
set_property PACKAGE_PIN R19 [get_ports {GPIO3_tri_io[24]}];        # JB2.4
set_property PACKAGE_PIN N17 [get_ports {GPIO3_tri_io[8]}];         # JB2.5
set_property PACKAGE_PIN P16 [get_ports {GPIO3_tri_io[11]}];        # JB2.6
set_property PACKAGE_PIN P18 [get_ports {GPIO3_tri_io[9]}];         # JB2.7
set_property PACKAGE_PIN P15 [get_ports {GPIO3_tri_io[10]}];        # JB2.8
set_property PACKAGE_PIN T17 [get_ports {GPIO3_tri_io[12]}];        # JB2.11
set_property PACKAGE_PIN R17 [get_ports {GPIO3_tri_io[15]}];        # JB2.12
set_property PACKAGE_PIN R18 [get_ports {GPIO3_tri_io[13]}];        # JB2.13
set_property PACKAGE_PIN R16 [get_ports {GPIO3_tri_io[14]}];        # JB2.14
set_property PACKAGE_PIN V17 [get_ports {GPIO3_tri_io[20]}];        # JB2.17
set_property PACKAGE_PIN W19 [get_ports {GPIO3_tri_io[17]}];        # JB2.18
set_property PACKAGE_PIN V18 [get_ports {GPIO3_tri_io[21]}];        # JB2.19
set_property PACKAGE_PIN W18 [get_ports {GPIO3_tri_io[16]}];        # JB2.20
set_property PACKAGE_PIN T20 [get_ports {GPIO3_tri_io[18]}];        # JB2.23
set_property PACKAGE_PIN W16 [get_ports {GPIO3_tri_io[1]}];         # JB2.24
set_property PACKAGE_PIN U20 [get_ports {GPIO3_tri_io[19]}];        # JB2.25
set_property PACKAGE_PIN V16 [get_ports {GPIO3_tri_io[0]}];         # JB2.26
set_property PACKAGE_PIN V20 [get_ports {GPIO3_tri_io[2]}];         # JB2.29
set_property PACKAGE_PIN Y19 [get_ports {GPIO3_tri_io[5]}];         # JB2.30
set_property PACKAGE_PIN W20 [get_ports {GPIO3_tri_io[3]}];         # JB2.31
set_property PACKAGE_PIN Y18 [get_ports {GPIO3_tri_io[4]}];         # JB2.32
set_property PACKAGE_PIN N20 [get_ports {GPIO3_tri_io[6]}];         # JB2.35
set_property PACKAGE_PIN P19 [get_ports {GPIO3_tri_io[23]}];        # JB2.36
set_property PACKAGE_PIN P20 [get_ports {GPIO3_tri_io[7]}];         # JB2.37
set_property PACKAGE_PIN N18 [get_ports {GPIO3_tri_io[22]}];        # JB2.38

set_property IOSTANDARD LVCMOS33 [list [get_ports {GPIO3_tri_io[*]}]]
