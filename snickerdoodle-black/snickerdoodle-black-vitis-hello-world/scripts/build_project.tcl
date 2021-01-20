
# we'll run headless for this script, as there is no need for the gui
# to be open.

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

# launch impl_1 to bit stream creation.
launch_runs impl_1 -to_step write_bitstream -jobs 10

# wait on job to be complete.
wait_on_run impl_1

# once complete, export the hardware design including the bit file.
set_property pfm_name {} [get_files -all {./project/snickerdoodle-black-vitis-hello-world.srcs/sources_1/bd/sn_black/sn_black.bd}]
write_hw_platform -fixed -include_bit -force -file ./sdk/sn_black_wrapper.xsa

# exit, we're all done with vivado ( note: the calling script will need to 
                                           launch vitis )
