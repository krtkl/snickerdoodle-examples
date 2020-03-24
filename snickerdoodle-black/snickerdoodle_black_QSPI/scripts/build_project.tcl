
# open up the GUI, as we're using a flow that will 
# create the project for editing
start_gui

# make sure we include the board path to the snickerdoodle
# black 
set_param board.repoPaths ./boards/

# create the project against the snickerdoodle black board
create_project snickerdoodle_black_qspi ./project -part xc7z020clg400-3
set_property board_part krtkl.com:snickerdoodle_black:part0:1.0 [current_project]
set_property target_language VHDL [current_project]

# add the ip directory for this app
set_property ip_repo_paths ./ip [current_project]
update_ip_catalog

# create the block diagram from the exported tcl file
source ./bd/bd.tcl
regenerate_bd_layout

# create the hdl wrapper, and add it to the project
update_compile_order -fileset sources_1
make_wrapper -files [get_files ./project/snickerdoodle_black_qspi.srcs/sources_1/bd/base/base.bd] -top
add_files -norecurse ./project/snickerdoodle_black_qspi.srcs/sources_1/bd/base/hdl/base_wrapper.vhd

# launch synthesis
launch_runs synth_1 -jobs 10
wait_on_run synth_1

# launch implementation
launch_runs impl_1 -to_step write_bitstream -jobs 10
wait_on_run synth_1

# copy over the sysdef file with bit stream
file copy -force ./project/snickerdoodle_black_qspi.runs/impl_1/base_wrapper.sysdef ./sdk/base_wrapper.hdf

# launch sdk
launch_sdk -workspace ./sdk -hwspec ./sdk/base_wrapper.hdf