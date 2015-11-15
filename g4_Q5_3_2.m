%Q5_3_2

%‡@
fs = 8000;
fdo = 261.6;
tt = [1:fs]/fs;
t = tt(1,1:fs/2);
%‰¹ŠK
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
do2 = sin(2*pi*2^(n/12)*fdo*t);
%2•ª‹x•„
%zz = zeros(1,fs*0.5);
onkai = [do,re,mi,fa,so,ra,si,do2];
wavplay(onkai,fs,'sync')
