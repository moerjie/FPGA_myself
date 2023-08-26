onerror {exit -code 1}
vlib work
vlog -work work Mul_unsigned.vo
vlog -work work Mul_unsigned.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Mul_unsigned_vlg_vec_tst -voptargs="+acc"
vcd file -direction Mul_unsigned.msim.vcd
vcd add -internal Mul_unsigned_vlg_vec_tst/*
vcd add -internal Mul_unsigned_vlg_vec_tst/i1/*
run -all
quit -f
