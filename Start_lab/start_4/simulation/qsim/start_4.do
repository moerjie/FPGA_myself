onerror {exit -code 1}
vlib work
vlog -work work start_4.vo
vlog -work work tim_cnt_v.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TIM_CNT_vlg_vec_tst -voptargs="+acc"
vcd file -direction start_4.msim.vcd
vcd add -internal TIM_CNT_vlg_vec_tst/*
vcd add -internal TIM_CNT_vlg_vec_tst/i1/*
run -all
quit -f
