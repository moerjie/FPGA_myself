# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 13.1.0"
set myProject "NCO_quartus"
set myProjectFile "NCO_quartus.qpf"
set myTopLevelEntity "NCO"
set Family "Cyclone III"
set Device "EP3C16F484C6"
set Package ""
set Speed ""
set UseTimeQuest "ON"

if { ! [ file exists $myProjectFile ] } {
    # Create new project
    puts "### Create new $myTool project <a href=\"matlab:downstream.handle('Model','NCO').openTargetTool;\">F:\\Git_Repository\\FPGA_myself\\DDS\\DDS_CSDN\\DDS_32BIT\\quartus_prj\\NCO_quartus.qpf</a>"
    load_package flow
    project_new $myProject

} else {
    # Open existing project
    puts "### Open existing $myTool project <a href=\"matlab:downstream.handle('Model','NCO').openTargetTool;\">F:\\Git_Repository\\FPGA_myself\\DDS\\DDS_CSDN\\DDS_32BIT\\quartus_prj\\NCO_quartus.qpf</a>"
    load_package flow
    project_open -current_revision $myProject

    # Remove Old HDL source files
    remove_all_global_assignments -name VHDL_FILE
    remove_all_global_assignments -name VERILOG_FILE
    remove_all_global_assignments -name SDC_FILE
    remove_all_instance_assignments -name LOCATION

}

# Set project properties
puts "### Set $myTool project properties"
set_global_assignment -name FAMILY $Family
set_global_assignment -name DEVICE $Device
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER $UseTimeQuest

# Add HDL source files
puts "### Update $myTool project with HDL source files"
 
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/FilterCoef.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/FilterTapSystolicPreAddWvlIn.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/subFilter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/Filter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/Discrete_FIR_Filter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/DitherGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/LookUpTableGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/WaveformGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/NCO_block.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/Subsystem.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/NCO/NCO.v"
set_global_assignment -name SDC_FILE "../hdlsrc/NCO/clock_constraint.sdc"
set_global_assignment -name TOP_LEVEL_ENTITY NCO

# Close project
puts "### Close $myTool project."
project_close

