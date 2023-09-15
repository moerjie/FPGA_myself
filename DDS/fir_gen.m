f=[0 0.2 0.2 1];
mhi=[1 1 0 0];
hbi=fir2(99,f,mhi);

freqz(hbi,1,[],1);