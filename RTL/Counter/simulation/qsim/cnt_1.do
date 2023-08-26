onerror {exit -code 1}
vlib work
vlog -work work cnt_1.vo
vlog -work work cnt_en_wav.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cnt_en_vlg_vec_tst -voptargs="+acc"
vcd file -direction cnt_1.msim.vcd
vcd add -internal cnt_en_vlg_vec_tst/*
vcd add -internal cnt_en_vlg_vec_tst/i1/*
run -all
quit -f
