#!/bin/bash

# source the vivado settings file so we have access to
# the ecosystem of applications
source /opt/Xilinx/Vivado/2018.2/settings64.sh

# clean up anything that may be there already
rm -rf ./project
mkdir ./project

# call vivado in batch mode calling the create_project.tcl
# script.  this will open the GUI and build up the project
# and package the IP for us.
vivado -mode batch -source ./scripts/create_project.tcl
