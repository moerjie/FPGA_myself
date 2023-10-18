clk=1000;
add_width=16;
mu_fre=[0 262 0 294 0 330 0 349 0 392 0 440 0 494 0 0 0 523 0 587 0 659 0 698 0 784 0 880 0 988 0 0];
fre_word=round((mu_fre*2^add_width)/clk);
fre_word_256=repelem(fre_word,8);

f=[0 0.9 0.9 1];
mhi=[1 1 0 0];
bhi=fir2(79,f,mhi);
freqz(bhi,1,[],1);