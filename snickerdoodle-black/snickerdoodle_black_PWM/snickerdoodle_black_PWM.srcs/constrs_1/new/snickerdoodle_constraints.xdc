###############################################################################
#
#   Constraints file for snickerdoodle black PWM project
#
#   Copyright (c) 2016 krtkl inc.
#
###############################################################################
#
#------------------------------------------------------------------------------
# Constraints for GPIO outputs
##------------------------------------------------------------------------------
## JA1 Connector
##------------------------------------------------------------------------------
### JA1.5 (IO_L5P_T0_AD9P_35)
set_property PACKAGE_PIN    E18         [get_ports pwm0]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm0]

### JA1.8 (IO_L4P_T0_35)
set_property PACKAGE_PIN    D19         [get_ports pwm1]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm1]

### JA1.11 (IO_L6P_T0_35)
set_property PACKAGE_PIN    F16         [get_ports pwm2]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm2]

### JA1.14 (IO_L1P_T0_AD0P_35)
set_property PACKAGE_PIN    C20         [get_ports pwm3]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm3]

#### JA1.17 (IO_L3P_T0_DQS_AD1P_35)
set_property PACKAGE_PIN    E17         [get_ports pwm4]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm4]

### JA1.20 (IO_L2P_T0_AD8P_35)
set_property PACKAGE_PIN    B19         [get_ports pwm5]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm5]

#### JA1.23 (IO_L15P_T2_DQS_AD12P_35)
set_property PACKAGE_PIN    F19         [get_ports pwm6]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm6]

### JA1.26 (IO_L18P_T2_AD13P_35)
set_property PACKAGE_PIN    G19         [get_ports pwm7]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm7]

#### JA1.29 (IO_L17P_T2_AD5P_35)
set_property PACKAGE_PIN    J20         [get_ports pwm8]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm8]

### JA1.32 (IO_L16P_T2_35)
set_property PACKAGE_PIN    G17         [get_ports pwm9]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm9]

#### JA1.35 (IO_L14P_T2_AD4P_SRCC_35)
set_property PACKAGE_PIN    J18         [get_ports pwm10]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm10]

### JA1.38 (IO_L13P_T2_MRCC_35)
set_property PACKAGE_PIN    H16         [get_ports pwm11]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm11]

##------------------------------------------------------------------------------
## JB1 Connector
##------------------------------------------------------------------------------
### JB1.5 (IO_L1P_T0_34)
set_property PACKAGE_PIN    T11         [get_ports pwm12]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm12]

### JB1.8 (IO_L2P_T0_34)
set_property PACKAGE_PIN    T12         [get_ports pwm13]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm13]

#### JB1.11 (IO_L6P_T0_34)
set_property PACKAGE_PIN    P14         [get_ports pwm14]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm14]

### JB1.14 (IO_L4P_T0_34)
set_property PACKAGE_PIN    V12         [get_ports pwm15]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm15]

#### JB1.17 (IO_L3P_T0_DQS_PUDC_B_34)
set_property PACKAGE_PIN    U13         [get_ports pwm16]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm16]

### JB1.20 (IO_L5P_T0_34)
set_property PACKAGE_PIN    T14         [get_ports pwm17]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm17]

#### JB1.23 (IO_L9P_T1_DQS_34)
set_property PACKAGE_PIN    T16         [get_ports pwm18]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm18]

### JB1.26 (IO_L7P_T1_34)
set_property PACKAGE_PIN    Y16         [get_ports pwm19]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm19]

#### JB1.29 (IO_L8P_T1_34)
set_property PACKAGE_PIN    W14         [get_ports pwm20]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm20]

### JB1.32 (IO_L10P_T1_34)
set_property PACKAGE_PIN    V15         [get_ports pwm21]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm21]

#### JB1.35 (IO_L11P_T1_SRCC_34)
set_property PACKAGE_PIN    U14         [get_ports pwm22]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm22]

### JB1.38 (IO_L12P_T1_MRCC_34)
set_property PACKAGE_PIN    U18         [get_ports pwm23]
set_property IOSTANDARD     LVCMOS33    [get_ports pwm23]
