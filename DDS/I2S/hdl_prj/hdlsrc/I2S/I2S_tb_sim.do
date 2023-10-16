onbreak resume
onerror resume
vsim -voptargs=+acc work.I2S_tb

add wave sim:/I2S_tb/u_I2S/clk
add wave sim:/I2S_tb/u_I2S/reset
add wave sim:/I2S_tb/u_I2S/clk_enable
add wave sim:/I2S_tb/u_I2S/L_CLR
add wave sim:/I2S_tb/u_I2S/L_DIN_0
add wave sim:/I2S_tb/u_I2S/L_DIN_1
add wave sim:/I2S_tb/u_I2S/L_DIN_2
add wave sim:/I2S_tb/u_I2S/L_DIN_3
add wave sim:/I2S_tb/u_I2S/L_DIN_4
add wave sim:/I2S_tb/u_I2S/L_DIN_5
add wave sim:/I2S_tb/u_I2S/L_DIN_6
add wave sim:/I2S_tb/u_I2S/L_DIN_7
add wave sim:/I2S_tb/u_I2S/L_DIN_8
add wave sim:/I2S_tb/u_I2S/L_DIN_9
add wave sim:/I2S_tb/u_I2S/L_DIN_10
add wave sim:/I2S_tb/u_I2S/L_DIN_11
add wave sim:/I2S_tb/u_I2S/L_DIN_12
add wave sim:/I2S_tb/u_I2S/L_DIN_13
add wave sim:/I2S_tb/u_I2S/L_DIN_14
add wave sim:/I2S_tb/u_I2S/L_DIN_15
add wave sim:/I2S_tb/u_I2S/L_DIN_16
add wave sim:/I2S_tb/u_I2S/L_DIN_17
add wave sim:/I2S_tb/u_I2S/L_DIN_18
add wave sim:/I2S_tb/u_I2S/L_DIN_19
add wave sim:/I2S_tb/u_I2S/L_DIN_20
add wave sim:/I2S_tb/u_I2S/L_DIN_21
add wave sim:/I2S_tb/u_I2S/L_DIN_22
add wave sim:/I2S_tb/u_I2S/L_DIN_23
add wave sim:/I2S_tb/u_I2S/L_DIN_24
add wave sim:/I2S_tb/u_I2S/L_DIN_25
add wave sim:/I2S_tb/u_I2S/L_DIN_26
add wave sim:/I2S_tb/u_I2S/L_DIN_27
add wave sim:/I2S_tb/u_I2S/L_DIN_28
add wave sim:/I2S_tb/u_I2S/L_DIN_29
add wave sim:/I2S_tb/u_I2S/L_DIN_30
add wave sim:/I2S_tb/u_I2S/L_DIN_31
add wave sim:/I2S_tb/u_I2S/MCLK_IN
add wave sim:/I2S_tb/u_I2S/R_CLR
add wave sim:/I2S_tb/u_I2S/R_DIN_0
add wave sim:/I2S_tb/u_I2S/R_DIN_1
add wave sim:/I2S_tb/u_I2S/R_DIN_2
add wave sim:/I2S_tb/u_I2S/R_DIN_3
add wave sim:/I2S_tb/u_I2S/R_DIN_4
add wave sim:/I2S_tb/u_I2S/R_DIN_5
add wave sim:/I2S_tb/u_I2S/R_DIN_6
add wave sim:/I2S_tb/u_I2S/R_DIN_7
add wave sim:/I2S_tb/u_I2S/R_DIN_8
add wave sim:/I2S_tb/u_I2S/R_DIN_9
add wave sim:/I2S_tb/u_I2S/R_DIN_10
add wave sim:/I2S_tb/u_I2S/R_DIN_11
add wave sim:/I2S_tb/u_I2S/R_DIN_12
add wave sim:/I2S_tb/u_I2S/R_DIN_13
add wave sim:/I2S_tb/u_I2S/R_DIN_14
add wave sim:/I2S_tb/u_I2S/R_DIN_15
add wave sim:/I2S_tb/u_I2S/R_DIN_16
add wave sim:/I2S_tb/u_I2S/R_DIN_17
add wave sim:/I2S_tb/u_I2S/R_DIN_18
add wave sim:/I2S_tb/u_I2S/R_DIN_19
add wave sim:/I2S_tb/u_I2S/R_DIN_20
add wave sim:/I2S_tb/u_I2S/R_DIN_21
add wave sim:/I2S_tb/u_I2S/R_DIN_22
add wave sim:/I2S_tb/u_I2S/R_DIN_23
add wave sim:/I2S_tb/u_I2S/R_DIN_24
add wave sim:/I2S_tb/u_I2S/R_DIN_25
add wave sim:/I2S_tb/u_I2S/R_DIN_26
add wave sim:/I2S_tb/u_I2S/R_DIN_27
add wave sim:/I2S_tb/u_I2S/R_DIN_28
add wave sim:/I2S_tb/u_I2S/R_DIN_29
add wave sim:/I2S_tb/u_I2S/R_DIN_30
add wave sim:/I2S_tb/u_I2S/R_DIN_31
add wave sim:/I2S_tb/u_I2S/ce_out
add wave sim:/I2S_tb/u_I2S/SOUT
add wave sim:/I2S_tb/SOUT_ref
add wave sim:/I2S_tb/u_I2S/MCLK_OUT
add wave sim:/I2S_tb/MCLK_OUT_ref
add wave sim:/I2S_tb/u_I2S/LRCLK_OUT
add wave sim:/I2S_tb/LRCLK_OUT_ref
add wave sim:/I2S_tb/u_I2S/SCLK_OUT
add wave sim:/I2S_tb/SCLK_OUT_ref
run -all