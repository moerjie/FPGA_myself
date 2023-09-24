f=[0 0.2 0.2 1];
mi=[1 1 0 0];
bhi=fir2(79,f,mi);
freqz(bhi,1,[],1);

