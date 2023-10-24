close all
clear all
clc
 
%set system parameter
fs = 2500;    %The frequency of the local oscillator signal
Fs = 1000000;   %sampling frequency
N =  24;         %Quantitative bits
L = 50000000;
 
%Generating an input signal
t =0:1/Fs:(1/Fs)*(L-1);          %Generating the time series of sampling frequencies
sc =sin(2*pi*fs*t);        %a sinusoidal input signal that produces a random starting phase
 
b =[1,-1];%integerator
a =[1,-1];%comb 
 
%comb
c1=filter(1,b,sc);
c2=filter(1,b,c1);
c3=filter(1,b,c2);
 
y = downsample(c3,4);
 
%integerater
i1 =filter(a,1,y);
i2 =filter(a,1,i1);
i3 =filter(a,1,i2);
sf = i3;
 
 
 
figure(1),
subplot(211),stem(t(1:1600),sc(1:1600));
xlabel('时间(t)','fontsize',8);
ylabel('幅度(dB)','fontsize',8);
title('sc','fontsize',8);
subplot(212),stem(t(1:400),sf(1:400));
xlabel('时间/4(t)','fontsize',8);
ylabel('幅度(dB)','fontsize',8);
title('sf','fontsize',8);
