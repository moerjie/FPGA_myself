cnt1_max=255;
cnt2_max=255;

sin1_phase=((0:cnt1_max)*2*pi)/(cnt1_max+1);
sin1_vec=sin(sin1_phase);
figure;plot(sin1_vec);


sin2_phase=((0:cnt2_max)*2*pi)/(cnt2_max+1);
sin2_vec=sin(sin2_phase);
figure;plot(sin2_vec);