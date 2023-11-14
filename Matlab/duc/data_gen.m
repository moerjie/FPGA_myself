f_l=[0 0.1 0.1 1];
f_h=[0 0.4 0.4 1];
mhi=[1 1 0 0];
bhi=fir2(79,f_l,mhi);
bhi_h=fir2(79,f_h,mhi);

freqz(bhi,1,[],1);