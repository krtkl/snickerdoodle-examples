#!/bin/bash

# source the vivaod settings file so we have access to
# the ecosystem of applications
source /tools/Xilinx/Vivado/2020.1/settings64.sh

# clean up anything that may be there already
rm -rf ./project
mkdir ./project

# call vivado in batch mode calling the create_project.tcl
# script.  build the project, then export the resulting
# hardware package to the ./sdk folder for vitis to open
vivado -mode batch -source ./scripts/build_project.tcl

# launch vitis against the exported hardware package
vitis -workspace ./sdk

# todo: script vitis application flow