onerror {exit -code 1}
vlib work
vlog -work work adder.vo
vlog -work work adder_d.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.adder_D_vlg_vec_tst -voptargs="+acc"
vcd file -direction adder.msim.vcd
vcd add -internal adder_D_vlg_vec_tst/*
vcd add -internal adder_D_vlg_vec_tst/i1/*
run -all
quit -f
