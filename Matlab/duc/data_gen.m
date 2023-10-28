f=[0 0.1 0.1 1];
mhi=[1 1 0 0];
bhi=fir2(79,f,mhi);

freqz(bhi,1,[],1);