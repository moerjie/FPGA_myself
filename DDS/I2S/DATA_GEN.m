SH_R=[1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
SH_S=0b11001100110011001100000000000000;
MCLK=24576000;
cnt1_LRCLK=511;
cnt2_SCLK=7;





% sin1_phase=((0:cnt2_max)*2*pi)/(cnt2_max+1);
% sin2_phase=64*((0:cnt2_max)*2*pi)/(cnt2_max+1);
% sin1=sin(sin1_phase);
% sin2=sin(sin2_phase);
% 
% sin_vec=(sin1+sin2)*0.49999;
% 
% figure;plot(sin1);
% figure;plot(sin_vec);