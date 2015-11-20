%Q5_5_1

%‡@
fs = 8000;
f = 523;
tt = [1:fs]/fs;
yy = sin(2*pi*f*tt);
%wavplay(yy,fs)
%‡A
a = log(0.1)/(-0.5);
ee = exp((-a)*tt);
% plot(tt,ee)
% grid on
yy = yy .* ee;
% plot(tt,yy)
% wavplay(yy,fs)
%‡B
f = 260;
zz = sin(2*pi*f*tt);
zz = zz .* ee;
wavplay(zz,fs)