
# open up the GUI, as we're using a flow that will 
# create the project for editing
start_gui

# create the project against the snickerdoodle black board, and vhdl
create_project snickerdoodle-black-vitis-hello-world ./project -part xc7z020clg400-3
set_property board_part krtkl.com:snickerdoodle_black:part0:1.0 [current_project]
set_property target_language VHDL [current_project]

# add the ip directory for this app as well as the
# common ip directory
set_property ip_repo_paths { \
    ./ip \
} [current_project]
update_ip_catalog

# create block diagram
source ./bd/bd.tcl

# create wrapper and add it
make_wrapper -files [get_files ./project/snickerdoodle-black-vitis-hello-world.srcs/sources_1/bd/sn_black/sn_black.bd] -top
add_files -norecurse ./project/snickerdoodle-black-vitis-hello-world.srcs/sources_1/bd/sn_black/hdl/sn_black_wrapper.vhd

# update compile order for newly added wrapper
update_compile_order -fileset sources_1

# add the constraint files
add_files -fileset constrs_1 -norecurse { \
  ./constraints/snickerdoodle-black-vitis-hello-world.xdc \
}

# increase the number of messages to prevent things from getting lost
set_param messaging.defaultLimit 1000000

# use more than the default horsepower
set_param general.MaxThreads 6
