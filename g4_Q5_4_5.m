%Q5_4_5
%MATLABによるフルート
fs = 8000;
f = 500;
tt =[1:fs]/fs;
omega = 2*pi*f;
yy = sin(omega*tt) + 1/3*sin(2*omega*tt) + 1/9*sin(3*omega*tt) + 1/30*sin(4*omega*tt);
% plot(tt(2000:2090),yy(2000:2090),'r')
% grid on
% hold on
%音声ファイルによるフルート
[xx,fss] = wavread('flute8k.wav');
ts = [1:fss]/fss;
%plot(ts(2000:2090),xx(2000:2090),'b')
%plot(yy)
%plot(xx)
w = 0:1/400:1;
yy(1:401) = w .* yy(1:401);

plot(yy)