onerror {exit -code 1}
vlib work
vlog -work work 4to16decoder.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dec4to16_vlg_vec_tst -voptargs="+acc"
vcd file -direction 4to16decoder.msim.vcd
vcd add -internal dec4to16_vlg_vec_tst/*
vcd add -internal dec4to16_vlg_vec_tst/i1/*
run -all
quit -f
