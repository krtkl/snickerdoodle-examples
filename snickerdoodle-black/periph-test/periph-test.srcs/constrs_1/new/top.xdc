###############################################################################
#
#   Constraints file for snickerdoodle black
#
#   Copyright (c) 2018 krtkl inc.
#
###############################################################################

#--------------------------------------------------------------------------------------------------
#   JA1.4       G14 |   JA2.4       J15 |   JB1.4       T19 |   JB2.4       R19 |   JC1.4       V5
#   JA1.5       E18 |   JA2.5       L14 |   JB1.5       T11 |   JB2.5       N17 |   JC1.5       U7
#   JA1.6       D20 |   JA2.6       J16 |   JB1.6       U12 |   JB2.6       P16 |   JC1.6       U10
#   JA1.7       E19 |   JA2.7       L15 |   JB1.7       T10 |   JB2.7       P18 |   JC1.7       V7
#   JA1.8       D19 |   JA2.8       K16 |   JB1.8       T12 |   JB2.8       P15 |   JC1.8       T9
#   JA1.11      F16 |   JA2.11      M14 |   JB1.11      P14 |   JB2.11      T17 |   JC1.11      T5
#   JA1.12      B20 |   JA2.12      G15 |   JB1.12      W13 |   JB2.12      R17 |   JC1.12      Y13
#   JA1.13      F17 |   JA2.13      M15 |   JB1.13      R14 |   JB2.13      R18 |   JC1.13      U5
#   JA1.14      C20 |   JA2.14      H15 |   JB1.14      V12 |   JB2.14      R16 |   JC1.14      Y12
#   JA1.17      E17 |   JA2.17      N15 |   JB1.17      U13 |   JB2.17      V17 |   JC1.17      V11
#   JA1.18      A20 |   JA2.18      J14 |   JB1.18      T15 |   JB2.18      W19 |   JC1.18      W6
#   JA1.19      D18 |   JA2.19      N16 |   JB1.19      V13 |   JB2.19      V18 |   JC1.19      V10
#   JA1.20      B19 |   JA2.20      K14 |   JB1.20      T14 |   JB2.20      W18 |   JC1.20      V6
#   JA1.23      F19 |   JA2.23      L19 |   JB1.23      T16 |   JB2.23      T20 |   JC1.23      V8
#   JA1.24      G20 |   JA2.24      J19 |   JB1.24      Y17 |   JB2.24      W16 |   JC1.24      Y11
#   JA1.25      F20 |   JA2.25      L20 |   JB1.25      U17 |   JB2.25      U20 |   JC1.25      W8
#   JA1.26      G19 |   JA2.26      K19 |   JB1.26      Y16 |   JB2.26      V16 |   JC1.26      W11
#   JA1.29      J20 |   JA2.29      M17 |   JB1.29      W14 |   JB2.29      V20 |   JC1.29      U9
#   JA1.30      G18 |   JA2.30      M20 |   JB1.30      W15 |   JB2.30      Y19 |   JC1.30      W9
#   JA1.31      H20 |   JA2.31      M18 |   JB1.31      Y14 |   JB2.31      W20 |   JC1.31      U8
#   JA1.32      G17 |   JA2.32      M19 |   JB1.32      V15 |   JB2.32      Y18 |   JC1.32      W10
#   JA1.35      J18 |   JA2.35      L16 |   JB1.35      U14 |   JB2.35      N20 |   JC1.35      Y9
#   JA1.36      H17 |   JA2.36      K18 |   JB1.36      U19 |   JB2.36      P19 |   JC1.36      Y6
#   JA1.37      H18 |   JA2.37      L17 |   JB1.37      U15 |   JB2.37      P20 |   JC1.37      Y8
#   JA1.38      H16 |   JA2.38      K17 |   JB1.38      U18 |   JB2.38      N18 |   JC1.38      Y7
#--------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# JA1 Connector
#------------------------------------------------------------------------------
# EMIO GPIO
set_property PACKAGE_PIN G14    [get_ports {EMIO_GPIO_tri_io[24]}];     # JA1.4 (IO_0_35)
set_property PACKAGE_PIN E18    [get_ports {EMIO_GPIO_tri_io[8]}];      # JA1.5 (IO_L5P_T0_AD9P_35)
set_property PACKAGE_PIN D20    [get_ports {EMIO_GPIO_tri_io[11]}];     # JA1.6 (IO_L4N_T0_35)
set_property PACKAGE_PIN E19    [get_ports {EMIO_GPIO_tri_io[9]}];      # JA1.7 (IO_L5N_T0_AD9N_35)
set_property PACKAGE_PIN D19    [get_ports {EMIO_GPIO_tri_io[10]}];     # JA1.8 (IO_L4P_T0_35)
set_property PACKAGE_PIN F16    [get_ports {EMIO_GPIO_tri_io[12]}];     # JA1.11 (IO_L6P_T0_35)
set_property PACKAGE_PIN B20    [get_ports {EMIO_GPIO_tri_io[15]}];     # JA1.12 (IO_L1N_T0_AD0N_35)
set_property PACKAGE_PIN F17    [get_ports {EMIO_GPIO_tri_io[13]}];     # JA1.13 (IO_L6N_T0_VREF_35)
set_property PACKAGE_PIN C20    [get_ports {EMIO_GPIO_tri_io[14]}];     # JA1.14 (IO_L1P_T0_AD0P_35)
set_property PACKAGE_PIN E17    [get_ports {EMIO_GPIO_tri_io[20]}];     # JA1.17 (IO_L3P_T0_DQS_AD1P_35)
set_property PACKAGE_PIN A20    [get_ports {EMIO_GPIO_tri_io[17]}];     # JA1.18 (IO_L2N_T0_AD8N_35)
set_property PACKAGE_PIN D18    [get_ports {EMIO_GPIO_tri_io[21]}];     # JA1.19 (IO_L3N_T0_DQS_AD1N_35)
set_property PACKAGE_PIN B19    [get_ports {EMIO_GPIO_tri_io[16]}];     # JA1.20 (IO_L2P_T0_AD8P_35)
set_property PACKAGE_PIN F19    [get_ports {EMIO_GPIO_tri_io[18]}];     # JA1.23 (IO_L15P_T2_DQS_AD12P_35)
set_property PACKAGE_PIN G20    [get_ports {EMIO_GPIO_tri_io[1]}];      # JA1.24 (IO_L18N_T2_AD13N_35)
set_property PACKAGE_PIN F20    [get_ports {EMIO_GPIO_tri_io[19]}];     # JA1.25 (IO_L15N_T2_DQS_AD12N_35)
set_property PACKAGE_PIN G19    [get_ports {EMIO_GPIO_tri_io[0]}];      # JA1.26 (IO_L18P_T2_AD13P_35)
set_property PACKAGE_PIN J20    [get_ports {EMIO_GPIO_tri_io[2]}];      # JA1.29 (IO_L17P_T2_AD5P_35)
set_property PACKAGE_PIN G18    [get_ports {EMIO_GPIO_tri_io[5]}];      # JA1.30 (IO_L16N_T2_35)
set_property PACKAGE_PIN H20    [get_ports {EMIO_GPIO_tri_io[3]}];      # JA1.31 (IO_L17N_T2_AD5N_35)
set_property PACKAGE_PIN G17    [get_ports {EMIO_GPIO_tri_io[4]}];      # JA1.32 (IO_L16P_T2_35)
set_property PACKAGE_PIN J18    [get_ports {EMIO_GPIO_tri_io[6]}];      # JA1.35 (IO_L14P_T2_AD4P_SRCC_35)
set_property PACKAGE_PIN H17    [get_ports {EMIO_GPIO_tri_io[23]}];     # JA1.36 (IO_L13N_T2_MRCC_35)
set_property PACKAGE_PIN H18    [get_ports {EMIO_GPIO_tri_io[7]}];      # JA1.37 (IO_L14N_T2_AD4N_SRCC_35)
set_property PACKAGE_PIN H16    [get_ports {EMIO_GPIO_tri_io[22]}];     # JA1.38 (IO_L13P_T2_MRCC_35)

set_property IOSTANDARD LVCMOS33 [get_ports {EMIO_GPIO_tri_io[*]}]

#------------------------------------------------------------------------------
# JA2 Connector
#------------------------------------------------------------------------------
# AXI GPIO
set_property PACKAGE_PIN J15    [get_ports {AXI_GPIO_tri_io[24]}];      # JA2.4 (IO_25_35)
set_property PACKAGE_PIN L14    [get_ports {AXI_GPIO_tri_io[8]}];       # JA2.5 (IO_L22P_T3_AD7P_35)
set_property PACKAGE_PIN J16    [get_ports {AXI_GPIO_tri_io[11]}];      # JA2.6 (IO_L24N_T3_AD15N_35)
set_property PACKAGE_PIN L15    [get_ports {AXI_GPIO_tri_io[9]}];       # JA2.7 (IO_L22N_T3_AD7N_35)
set_property PACKAGE_PIN K16    [get_ports {AXI_GPIO_tri_io[10]}];      # JA2.8 (IO_L24P_T3_AD15P_35)
set_property PACKAGE_PIN M14    [get_ports {AXI_GPIO_tri_io[12]}];      # JA2.11 (IO_L23P_T3_35)
set_property PACKAGE_PIN G15    [get_ports {AXI_GPIO_tri_io[15]}];      # JA2.12 (IO_L19N_T3_VREF_35)
set_property PACKAGE_PIN M15    [get_ports {AXI_GPIO_tri_io[13]}];      # JA2.13 (IO_L23N_T3_35)
set_property PACKAGE_PIN H15    [get_ports {AXI_GPIO_tri_io[14]}];      # JA2.14 (IO_L19P_T3_35)
set_property PACKAGE_PIN N15    [get_ports {AXI_GPIO_tri_io[20]}];      # JA2.17 (IO_L21P_T3_DQS_AD14P_35)
set_property PACKAGE_PIN J14    [get_ports {AXI_GPIO_tri_io[17]}];      # JA2.18 (IO_L20N_T3_AD6N_35)
set_property PACKAGE_PIN N16    [get_ports {AXI_GPIO_tri_io[21]}];      # JA2.19 (IO_L21N_T3_DQS_AD14N_35)
set_property PACKAGE_PIN K14    [get_ports {AXI_GPIO_tri_io[16]}];      # JA2.20 (IO_L20P_T3_AD6P_35)
set_property PACKAGE_PIN L19    [get_ports {AXI_GPIO_tri_io[18]}];      # JA2.23 (IO_L9P_T1_DQS_AD3P_35)
set_property PACKAGE_PIN J19    [get_ports {AXI_GPIO_tri_io[1]}];       # JA2.24 (IO_L10N_T1_AD11N_35)
set_property PACKAGE_PIN L20    [get_ports {AXI_GPIO_tri_io[19]}];      # JA2.25 (IO_L9N_T1_DQS_AD3N_35)
set_property PACKAGE_PIN K19    [get_ports {AXI_GPIO_tri_io[0]}];       # JA2.26 (IO_L10P_T1_AD11P_35)
set_property PACKAGE_PIN M17    [get_ports {AXI_GPIO_tri_io[2]}];       # JA2.29 (IO_L8P_T1_AD10P_35)
set_property PACKAGE_PIN M20    [get_ports {AXI_GPIO_tri_io[5]}];       # JA2.30 (IO_L7N_T1_AD2N_35)
set_property PACKAGE_PIN M18    [get_ports {AXI_GPIO_tri_io[3]}];       # JA2.31 (IO_L8N_T1_AD10N_35)
set_property PACKAGE_PIN M19    [get_ports {AXI_GPIO_tri_io[4]}];       # JA2.32 (IO_L7P_T1_AD2P_35)
set_property PACKAGE_PIN L16    [get_ports {AXI_GPIO_tri_io[6]}];       # JA2.35 (IO_L11P_T1_SRCC_35)
set_property PACKAGE_PIN K18    [get_ports {AXI_GPIO_tri_io[23]}];      # JA2.36 (IO_L12N_T1_MRCC_35)
set_property PACKAGE_PIN L17    [get_ports {AXI_GPIO_tri_io[7]}];       # JA2.37 (IO_L11N_T1_SRCC_35)
set_property PACKAGE_PIN K17    [get_ports {AXI_GPIO_tri_io[22]}];      # JA2.38 (IO_L12P_T1_MRCC_35)

set_property IOSTANDARD LVCMOS33 [get_ports {AXI_GPIO_tri_io[*]}]

#------------------------------------------------------------------------------
# JB1 Connector
#------------------------------------------------------------------------------
# EMIO SPI
set_property PACKAGE_PIN T11    [get_ports EMIO_SPI_io1_i];             # JB1.5 (IO_L1P_T0_34)
set_property PACKAGE_PIN U12    [get_ports EMIO_SPI_io0_o];             # JB1.6 (IO_L2N_T0_34)
set_property PACKAGE_PIN T10    [get_ports EMIO_SPI_sck_o];             # JB1.7 (IO_L1N_T0_34)
set_property PACKAGE_PIN T12    [get_ports EMIO_SPI_ss_o];              # JB1.8 (IO_L2P_T0_34)

set_property IOSTANDARD LVCMOS33 [get_ports EMIO_SPI_*]

# EMIO UART
set_property PACKAGE_PIN P14    [get_ports EMIO_UART_rxd];              # JB1.11 (IO_L6P_T0_34)
set_property PACKAGE_PIN W13    [get_ports EMIO_UART_txd];              # JB1.12 (IO_L4N_T0_34)

set_property IOSTANDARD LVCMOS33 [get_ports EMIO_UART_*]

# EMIO I2C
set_property PACKAGE_PIN R14    [get_ports EMIO_IIC_scl_io];            # JB1.13 (IO_L6N_T0_VREF_34)
set_property PACKAGE_PIN V12    [get_ports EMIO_IIC_sda_io];            # JB1.14 (IO_L4P_T0_34)

set_property IOSTANDARD LVCMOS33 [get_ports EMIO_IIC_*]


#------------------------------------------------------------------------------
# JB2 Connector
#------------------------------------------------------------------------------
# AXI SPI
set_property PACKAGE_PIN N17    [get_ports AXI_SPI_io1_io];             # JB2.5 (IO_L23P_T3_34)
set_property PACKAGE_PIN P16    [get_ports AXI_SPI_io0_io];             # JB2.6 (IO_L24N_T3_34)
set_property PACKAGE_PIN P18    [get_ports AXI_SPI_sck_io];             # JB2.7 (IO_L23N_T3_34)
set_property PACKAGE_PIN P15    [get_ports {AXI_SPI_ss_io[0]}];         # JB2.8 (IO_L24P_T3_34)

set_property IOSTANDARD LVCMOS33 [get_ports AXI_SPI_*]

# AXI UART
set_property PACKAGE_PIN T17    [get_ports AXI_UART_rxd];               # JB2.11 (IO_L20P_T3_34)
set_property PACKAGE_PIN R17    [get_ports AXI_UART_txd];               # JB2.12 (IO_L19N_T3_VREF_34)

set_property IOSTANDARD LVCMOS33 [get_ports AXI_UART_*]

# AXI I2C
set_property PACKAGE_PIN R18    [get_ports AXI_IIC_scl_io];             # JB2.13 (IO_L20N_T3_34)
set_property PACKAGE_PIN R16    [get_ports AXI_IIC_sda_io];             # JB2.14 (IO_L19P_T3_34)

set_property IOSTANDARD LVCMOS33 [get_ports AXI_IIC_*]
