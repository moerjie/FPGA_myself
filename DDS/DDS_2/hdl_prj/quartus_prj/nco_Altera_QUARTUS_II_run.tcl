# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 13.1.0"
set myProject "nco_quartus"
set myProjectFile "nco_quartus.qpf"
set myTopLevelEntity "nco"
set Family "Cyclone III"
set Device "EP3C16U484C6"
set Package ""
set Speed ""
set UseTimeQuest "ON"

if { ! [ file exists $myProjectFile ] } {
    # Create new project
    puts "### Create new $myTool project <a href=\"matlab:downstream.handle('Model','nco').openTargetTool;\">hdl_prj\\quartus_prj\\nco_quartus.qpf</a>"
    load_package flow
    project_new $myProject

} else {
    # Open existing project
    puts "### Open existing $myTool project <a href=\"matlab:downstream.handle('Model','nco').openTargetTool;\">hdl_prj\\quartus_prj\\nco_quartus.qpf</a>"
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
 
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/FilterCoef.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/FilterTapSystolicPreAddWvlIn.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/subFilter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/Filter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/Discrete_FIR_Filter.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/DitherGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/LookUpTableGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/WaveformGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/NCO1.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/Subsystem.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/nco/nco.v"
set_global_assignment -name SDC_FILE "../hdlsrc/nco/clock_constraint.sdc"
set_global_assignment -name TOP_LEVEL_ENTITY nco

# Close project
puts "### Close $myTool project."
project_close

