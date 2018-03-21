#------------------------------------------------------------------------------
# snickerdoodle Prime constraints
#------------------------------------------------------------------------------

set_property PACKAGE_PIN E18 [get_ports SPI0_MISO_I];           # JA1.5
set_property PACKAGE_PIN D20 [get_ports SPI0_MOSI_O];           # JA1.6
set_property PACKAGE_PIN E19 [get_ports SPI0_SCLK_O];           # JA1.7
set_property PACKAGE_PIN D19 [get_ports SPI0_SS_O];             # JA1.8

set_property IOSTANDARD LVCMOS33 [list [get_ports SPI0_*]]
