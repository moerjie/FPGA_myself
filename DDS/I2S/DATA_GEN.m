SH_R=[1,2,3,4,5];

cnt1_max=63;
cnt2_max=255;

sin1_phase=((0:cnt2_max)*2*pi)/(cnt2_max+1);
sin2_phase=64*((0:cnt2_max)*2*pi)/(cnt2_max+1);
sin1=sin(sin1_phase);
sin2=sin(sin2_phase);

sin_vec=(sin1+sin2)*0.49999;

figure;plot(sin1);
figure;plot(sin_vec);