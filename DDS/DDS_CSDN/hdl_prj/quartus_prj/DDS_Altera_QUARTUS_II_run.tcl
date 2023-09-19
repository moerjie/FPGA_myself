# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 13.1.0"
set myProject "DDS_quartus"
set myProjectFile "DDS_quartus.qpf"
set myTopLevelEntity "DDS"
set Family "Cyclone III"
set Device "EP3C16U484C6"
set Package ""
set Speed ""
set UseTimeQuest "ON"

if { ! [ file exists $myProjectFile ] } {
    # Create new project
    puts "### Create new $myTool project <a href=\"matlab:downstream.handle('Model','DDS').openTargetTool;\">hdl_prj\\quartus_prj\\DDS_quartus.qpf</a>"
    load_package flow
    project_new $myProject

} else {
    # Open existing project
    puts "### Open existing $myTool project <a href=\"matlab:downstream.handle('Model','DDS').openTargetTool;\">hdl_prj\\quartus_prj\\DDS_quartus.qpf</a>"
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
 
set_global_assignment -name VERILOG_FILE "../hdlsrc/DDS/DitherGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/DDS/LookUpTableGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/DDS/WaveformGen.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/DDS/NCO.v"
set_global_assignment -name VERILOG_FILE "../hdlsrc/DDS/DDS.v"
set_global_assignment -name SDC_FILE "../hdlsrc/DDS/clock_constraint.sdc"
set_global_assignment -name TOP_LEVEL_ENTITY DDS

# Close project
puts "### Close $myTool project."
project_close

