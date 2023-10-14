cnt1_max=63;
cnt2_max=255;

ram_len=cnt2_max+1;

WL=16;FL=15;IS_SIGN=1;

vec_phase_1=(0:cnt2_max)*2*pi/(cnt2_max+1);
vec_phase_2=64*(0:cnt2_max)*2*pi/(cnt2_max+1);
vec_1=sin(vec_phase_1);
vec_2=sin(vec_phase_2);

vec_ram=(vec_1+vec_2)*0.49999;

vec_ram_fix=fi(vec_ram,IS_SIGN,WL);

plot(vec_ram);






