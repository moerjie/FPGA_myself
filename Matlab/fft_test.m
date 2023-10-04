fs=1000;%采样率
f1=100;%信号频率
f2=400;%信号频率
T=1;%时宽1s
n=round(T*fs);%采样点个数  舍入至最近的小数或整数
t=linspace(0,T,n);%时域横坐标
x = cos(2*pi*f1*t) + cos(2*pi*f2*t);
y=cos(2*pi*f1+pi/2);
figure(1);
plot(t,x);%画时域图
xlabel("t/s")
grid on

%用fft得出离散傅里叶变换
X = fftshift(fft(x./(n))); 
%频域横坐标，注意奈奎斯特采样定理，最大原信号最大频率不超过采样频率的一半
f=linspace(-fs/2,fs/2-1,n);
figure(2)
plot(f,abs(X));%画双侧频谱幅度图
xlabel("f/Hz")
ylabel("幅度")
grid on
