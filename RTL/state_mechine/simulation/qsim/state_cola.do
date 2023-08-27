onerror {exit -code 1}
vlib work
vlog -work work state_cola.vo
vlog -work work list_test.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.list_test_vlg_vec_tst -voptargs="+acc"
vcd file -direction state_cola.msim.vcd
vcd add -internal list_test_vlg_vec_tst/*
vcd add -internal list_test_vlg_vec_tst/i1/*
run -all
quit -f
