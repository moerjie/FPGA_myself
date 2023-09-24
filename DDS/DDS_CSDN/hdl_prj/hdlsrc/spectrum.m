% dac_out;
dac_dat;

signal_len=length(dac_out);
cfftwinplot(dac_out,50E6,'dds_out_spectrum','red');