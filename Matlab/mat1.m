% M=5;
% x=[0:2*pi/180:2*pi];
% y=sin(x);
% plot(x,y)
%% 正弦wav
% N=24000; fs=8000;f0=400;phy=0;A=0.1;
% filename='sine.wav';
% t=[0:N-1]/fs;
% y=A*sin(2*pi*f0*t+phy);
% plot(t,y)
% audiowrite(filename,y,fs);


%% 线性扫频信号
% N=32000; fs = 8000; f0=400; f1=1000; phy=0; A=0.5;
% t=[0:N-1]/fs;
% f_t=(f1-f0)/((N-1)/fs)*t+f0;
% phi_t=0.5*(f1-f0)/((N-1)/fs)*(t.*t)+f0.*t;
% y=A*sin(2*pi*phi_t);
% figure;plot(t,y);
% figure;plot(t,f_t);
% figure;plot(t,phi_t);
% audiowrite('out.wav',y,fs);

