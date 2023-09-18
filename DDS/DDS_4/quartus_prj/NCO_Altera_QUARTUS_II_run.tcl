# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 13.1.0"
set myProject "NCO_quartus"
set myProjectFile "NCO_quartus.qpf"
set myTopLevelEntity "NCO"
set Family "Cyclone III"
set Device "EP3C40F484C6"
set Package ""
set Speed ""
set UseTimeQuest "ON"

# Open existing project
puts "### Open existing $myTool project F:\\Git_Repository\\FPGA_myself\\DDS\\DDS_4\\quartus_prj\\NCO_quartus.qpf"
load_package flow
project_open -current_revision $myProject

# Running PostMapTiming
puts "### Running PostMapTiming in $myTool ..."
execute_module -tool fit -args "--early_timing_estimate"
create_timing_netlist
read_sdc
update_timing_netlist
report_clock_fmax_summary
report_timing -npaths 1
report_timing -npaths 3 -file ${myTopLevelEntity}_preroute.tqr
puts "### PostMapTiming Complete."

# Close project
puts "### Close $myTool project."
project_close

