%Q5_3_4

fs = 8000;
fdo = 261.6;
tt = [1:fs]/fs;
%���K_4������
t = tt(1,1:fs*(3/4));
n = 0;
do = sin(2*pi*2^(n/12)*fdo*t);
n = 2;
re = sin(2*pi*2^(n/12)*fdo*t);
n = 4;
mi = sin(2*pi*2^(n/12)*fdo*t);
n = 5;
fa = sin(2*pi*2^(n/12)*fdo*t);
n = 7;
so = sin(2*pi*2^(n/12)*fdo*t);
n = 9;
ra = sin(2*pi*2^(n/12)*fdo*t);
n = 11;
si = sin(2*pi*2^(n/12)*fdo*t);
n = 12;
dooku1 = sin(2*pi*2^(n/12)*fdo*t);
%���K_2������
ta = [t,t];
n = 2;
re2bai = sin(2*pi*2^(n/12)*fdo*ta);
n = 4;
mi2bai = sin(2*pi*2^(n/12)*fdo*ta);
n = 7;
so2bai = sin(2*pi*2^(n/12)*fdo*ta);
%���傤���剹��
tyoutyo = [so,mi,mi2bai,fa,re,re2bai,do,re,mi,fa,so,so,so2bai];
wavplay(tyoutyo,fs)