proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.cache/wt [current_project]
  set_property parent.project_path C:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.xpr [current_project]
  set_property ip_repo_paths c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.cache/ip [current_project]
  set_property ip_output_repo c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.cache/ip [current_project]
  add_files -quiet C:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.runs/synth_1/base_block_design_wrapper.dcp
  read_xdc -ref base_block_design_processing_system7_0_0 -cells inst c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_processing_system7_0_0/base_block_design_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_processing_system7_0_0/base_block_design_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref base_block_design_rst_processing_system7_0_50M_0 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_rst_processing_system7_0_50M_0/base_block_design_rst_processing_system7_0_50M_0_board.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_rst_processing_system7_0_50M_0/base_block_design_rst_processing_system7_0_50M_0_board.xdc]
  read_xdc -ref base_block_design_rst_processing_system7_0_50M_0 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_rst_processing_system7_0_50M_0/base_block_design_rst_processing_system7_0_50M_0.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_rst_processing_system7_0_50M_0/base_block_design_rst_processing_system7_0_50M_0.xdc]
  read_xdc -ref base_block_design_axi_timer_0_4 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_4/base_block_design_axi_timer_0_4.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_4/base_block_design_axi_timer_0_4.xdc]
  read_xdc -ref base_block_design_axi_timer_0_5 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_5/base_block_design_axi_timer_0_5.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_5/base_block_design_axi_timer_0_5.xdc]
  read_xdc -ref base_block_design_axi_timer_0_6 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_6/base_block_design_axi_timer_0_6.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_6/base_block_design_axi_timer_0_6.xdc]
  read_xdc -ref base_block_design_axi_timer_0_7 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_7/base_block_design_axi_timer_0_7.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_7/base_block_design_axi_timer_0_7.xdc]
  read_xdc -ref base_block_design_axi_timer_0_8 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_8/base_block_design_axi_timer_0_8.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_8/base_block_design_axi_timer_0_8.xdc]
  read_xdc -ref base_block_design_axi_timer_0_9 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_9/base_block_design_axi_timer_0_9.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_9/base_block_design_axi_timer_0_9.xdc]
  read_xdc -ref base_block_design_axi_timer_0_10 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_10/base_block_design_axi_timer_0_10.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_10/base_block_design_axi_timer_0_10.xdc]
  read_xdc -ref base_block_design_axi_timer_0_11 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_11/base_block_design_axi_timer_0_11.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_11/base_block_design_axi_timer_0_11.xdc]
  read_xdc -ref base_block_design_axi_timer_0_12 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_12/base_block_design_axi_timer_0_12.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_12/base_block_design_axi_timer_0_12.xdc]
  read_xdc -ref base_block_design_axi_timer_0_13 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_13/base_block_design_axi_timer_0_13.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_13/base_block_design_axi_timer_0_13.xdc]
  read_xdc -ref base_block_design_axi_timer_0_14 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_14/base_block_design_axi_timer_0_14.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_14/base_block_design_axi_timer_0_14.xdc]
  read_xdc -ref base_block_design_axi_timer_0_15 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_15/base_block_design_axi_timer_0_15.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_15/base_block_design_axi_timer_0_15.xdc]
  read_xdc -ref base_block_design_axi_timer_0_16 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_16/base_block_design_axi_timer_0_16.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_16/base_block_design_axi_timer_0_16.xdc]
  read_xdc -ref base_block_design_axi_timer_0_17 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_17/base_block_design_axi_timer_0_17.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_17/base_block_design_axi_timer_0_17.xdc]
  read_xdc -ref base_block_design_axi_timer_0_18 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_18/base_block_design_axi_timer_0_18.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_18/base_block_design_axi_timer_0_18.xdc]
  read_xdc -ref base_block_design_axi_timer_0_19 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_19/base_block_design_axi_timer_0_19.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_19/base_block_design_axi_timer_0_19.xdc]
  read_xdc -ref base_block_design_axi_timer_0_20 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_20/base_block_design_axi_timer_0_20.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_20/base_block_design_axi_timer_0_20.xdc]
  read_xdc -ref base_block_design_axi_timer_0_21 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_21/base_block_design_axi_timer_0_21.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_21/base_block_design_axi_timer_0_21.xdc]
  read_xdc -ref base_block_design_axi_timer_0_22 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_22/base_block_design_axi_timer_0_22.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_22/base_block_design_axi_timer_0_22.xdc]
  read_xdc -ref base_block_design_axi_timer_0_23 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_23/base_block_design_axi_timer_0_23.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_23/base_block_design_axi_timer_0_23.xdc]
  read_xdc -ref base_block_design_axi_timer_0_24 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_24/base_block_design_axi_timer_0_24.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_24/base_block_design_axi_timer_0_24.xdc]
  read_xdc -ref base_block_design_axi_timer_0_25 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_25/base_block_design_axi_timer_0_25.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_25/base_block_design_axi_timer_0_25.xdc]
  read_xdc -ref base_block_design_axi_timer_0_26 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_26/base_block_design_axi_timer_0_26.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_26/base_block_design_axi_timer_0_26.xdc]
  read_xdc -ref base_block_design_axi_timer_0_27 c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_27/base_block_design_axi_timer_0_27.xdc
  set_property processing_order EARLY [get_files c:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/sources_1/bd/base_block_design/ip/base_block_design_axi_timer_0_27/base_block_design_axi_timer_0_27.xdc]
  read_xdc C:/snickerdoodle_black_PWM/snickerdoodle_black_PWM.srcs/constrs_1/new/snickerdoodle_constraints.xdc
  link_design -top base_block_design_wrapper -part xc7z020clg400-3
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force base_block_design_wrapper_opt.dcp
  report_drc -file base_block_design_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file base_block_design_wrapper.hwdef}
  place_design 
  write_checkpoint -force base_block_design_wrapper_placed.dcp
  report_io -file base_block_design_wrapper_io_placed.rpt
  report_utilization -file base_block_design_wrapper_utilization_placed.rpt -pb base_block_design_wrapper_utilization_placed.pb
  report_control_sets -verbose -file base_block_design_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force base_block_design_wrapper_routed.dcp
  report_drc -file base_block_design_wrapper_drc_routed.rpt -pb base_block_design_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file base_block_design_wrapper_timing_summary_routed.rpt -rpx base_block_design_wrapper_timing_summary_routed.rpx
  report_power -file base_block_design_wrapper_power_routed.rpt -pb base_block_design_wrapper_power_summary_routed.pb
  report_route_status -file base_block_design_wrapper_route_status.rpt -pb base_block_design_wrapper_route_status.pb
  report_clock_utilization -file base_block_design_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force base_block_design_wrapper.mmi }
  write_bitstream -force base_block_design_wrapper.bit 
  catch { write_sysdef -hwdef base_block_design_wrapper.hwdef -bitfile base_block_design_wrapper.bit -meminfo base_block_design_wrapper.mmi -file base_block_design_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

