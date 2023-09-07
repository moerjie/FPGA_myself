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

%% 数字角频率的含义 1
% N = 100; fs = 100; f0 = 10; f1 = 110;  ;
% t = [0:N-1]/fs;
% x1 =  sin(2*pi*f0*t );
% x2 =  sin(2*pi*f1*t );
% figure;
% subplot(2,1,1);hold;stem(x1, 'filled');title('x1(n)');plot(x1); xlabel('n');
% subplot(2,1,2);hold;stem(x2, 'filled');title('x2(n)');plot(x2); xlabel('n');

%% 2
t_delta = 0.00001;  %  time precision  of  analog wave plotting , in seconds

fs = 100;   % sample rate, in Hz
f1 = 10  ;   % signal 1 frequency , in Hz    
f2 = 90 ;   % signal 2 frequency , in Hz    

t_len  = 0.2  ; % time length of wave plotting

t_idx = [0:t_delta:t_len]; % time index

% get analog wave x1(t) and x2(t)
x_1_t = sin(2*pi*f1*t_idx); 
x_2_t = sin(2*pi*f2*t_idx); 

% get the sampled digital sampled serials x1(n) and x2(n)
Ts = 1/fs; % sample period
t_Ts_idx = [0:Ts: t_len];
x_1_n = sin(2*pi*f1*t_Ts_idx);
x_2_n = sin(2*pi*f2*t_Ts_idx);

% plot analog wave and digital serials in the same figure
close all
figure;
subplot(3,1,1);
h1 = plot(t_idx*1E3, x_1_t,'blue', t_idx*1E3, x_2_t, 'red');
legend(h1,'x1(t)','x2(t)','Location','northeast');hold; 
stem(t_Ts_idx*1E3, x_1_n,   'blue', 'Marker','O','MarkerSize',6,'LineWidth',1.5,'LineStyle',':');
stem(t_Ts_idx*1E3, x_2_n, 'red',  'Marker','X','MarkerSize',12,'LineWidth',1.5,'LineStyle','--');
title(['x1(t) ',int2str(f1),' Hz, ','x2(t) ',int2str(f2),' Hz,',' fs ',int2str(fs),' Hz']), xlabel('time(ms)');

% plot digital serials x1(n) and x2(n) in different figure
subplot(3,1,2);
stem(t_Ts_idx*1E3, x_1_n, 'filled', 'blue');title(['x1(n) ',int2str(f1),' Hz']);xlabel('time(ms)');
subplot(3,1,3);
stem(t_Ts_idx*1E3, x_2_n, 'filled', 'red ');title(['x2(n) ',int2str(f2),' Hz']);xlabel('time(ms)');

