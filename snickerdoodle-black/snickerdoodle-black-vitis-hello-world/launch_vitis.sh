#!/bin/bash

# source the vivaod settings file so we have access to
# the ecosystem of applications
source /tools/Xilinx/Vivado/2020.1/settings64.sh

# launch vitis against the exported hardware package
vitis -workspace ./sdk

# todo: script vitis application flow
