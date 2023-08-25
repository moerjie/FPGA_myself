onerror {exit -code 1}
vlib work
vlog -work work cross_bar.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cross_bar_vlg_vec_tst -voptargs="+acc"
vcd file -direction cross_bar.msim.vcd
vcd add -internal cross_bar_vlg_vec_tst/*
vcd add -internal cross_bar_vlg_vec_tst/i1/*
run -all
quit -f
