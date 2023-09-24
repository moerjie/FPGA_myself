# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 13.1.0"
set myProject "FIR_quartus"
set myProjectFile "FIR_quartus.qpf"
set myTopLevelEntity "FIR"
set Family "Cyclone III"
set Device "EP3C16F484C6"
set Package ""
set Speed ""
set UseTimeQuest "ON"

if { ! [ file exists $myProjectFile ] } {
    # Create new project
    puts "### Create new $myTool project <a href=\"matlab:downstream.handle('Model','FIR').openTargetTool;\">F:\\Git_Repository\\FPGA_myself\\DDS\\DDS_CSDN\\FIR\\quartus_prj\\FIR_quartus.qpf</a>"
    load_package flow
    project_new $myProject

} else {
    # Open existing project
    puts "### Open existing $myTool project <a href=\"matlab:downstream.handle('Model','FIR').openTargetTool;\">F:\\Git_Repository\\FPGA_myself\\DDS\\DDS_CSDN\\FIR\\quartus_prj\\FIR_quartus.qpf</a>"
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
 
set_global_assignment -name VERILOG_FILE "../hdlsrc/FIR/FilterCoef.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/FIR/FilterTapSystolicPreAddWvlIn.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/FIR/subFilter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/FIR/Filter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/FIR/Discrete_FIR_Filter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/FIR/FIR.v"
set_global_assignment -name SDC_FILE "../hdlsrc/FIR/clock_constraint.sdc"
set_global_assignment -name TOP_LEVEL_ENTITY FIR

# Close project
puts "### Close $myTool project."
project_close

