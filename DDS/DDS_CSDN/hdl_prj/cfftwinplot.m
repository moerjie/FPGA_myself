% ********************************************************************************
% file      : cfftwinplot.m
% usuage    : complex signal spectrum plot
% author    : duweitao@cuc.edu.cn
% date      : 2007 Mar 5th
% version   : 0.1
% revise history
%   0.1 initial version
% ********************************************************************************

function cfftwinplot(data,fs,ttStr,color)
% function cfftwinplot(data,fs,ttStr,color)
% complex signal spectrum viewer
% data  : input data sequence
% fs    : sample rate
% ttStr : plot title string 
% color : Plot colors

dataLen     = length(data);
lenLog2     = floor(log2(dataLen)) ;
procLen     = 2 ^ lenLog2;
fftLen      = procLen;
fftLenMax   = 128*1024;
if(fftLen > fftLenMax)
  fftLen = fftLenMax;
end
winLen      = fftLen;

noverlap    = 0;
order       = 10;
win         = kaiser(winLen, order);

data = data(1:procLen);

[S,W] = pwelch (data, win, noverlap, fftLen);

lenS= length(S);
S   = S./max(S);
S   = 10*log10(S+1e-15);

% when data is a real signal, S ~ [0, pi]
% copy a symmetric spectrum
if(lenS == ceil((fftLen+1)/2) )
 S(lenS) = [];
 SRot = S;
 SRot = rot90(SRot);
 SRot = rot90(SRot);
 S = [SRot;S];
else
% data is complex signal, S ~[0~2pi]
 S   = fftshift(S);
end

N = fftLen;
xvals = linspace(-floor(fs/2), floor(fs/2)-floor((fs/N)), N);
figure;    
plot(xvals(1:N),S(1:N),color), grid on,axis([-floor(fs/2), floor(fs/2)-1,-150,20]);

xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title(ttStr);
end    
