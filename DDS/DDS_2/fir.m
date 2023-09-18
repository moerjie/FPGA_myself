f=[0 0.5 0.5 1];
mhi=[1 1 0 0];
hbi=fir2(79,f,mhi);

freqz(hbi,1,[],1);