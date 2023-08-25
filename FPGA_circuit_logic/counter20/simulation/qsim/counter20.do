onerror {exit -code 1}
vlib work
vlog -work work counter20.vo
vlog -work work Waveform_CNT20.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.counter20_vlg_vec_tst -voptargs="+acc"
vcd file -direction counter20.msim.vcd
vcd add -internal counter20_vlg_vec_tst/*
vcd add -internal counter20_vlg_vec_tst/i1/*
run -all
quit -f
