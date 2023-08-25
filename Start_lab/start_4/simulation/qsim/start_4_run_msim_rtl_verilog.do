transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/APP_Download/Quartus_13/Project/start_4 {F:/APP_Download/Quartus_13/Project/start_4/rtl_module.v}

