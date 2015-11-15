%Q5_3_3

fs = 8000;
fdo = 261.6;
tt = [1:fs]/fs;
t = tt(1,1:fs);

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
%˜a‰¹
domiso = do + mi + so;
domiso = domiso / max(abs(domiso)) * 0.99;
%wavplay(domiso,fs)
domisodo2 = do + mi + so + do2;
domisodo2 = domisodo2 / max(abs(domisodo2)) *0.99;
%wavplay(domisodo2,fs)
refasi = re + fa + si;
refasi = refasi / max(abs(refasi)) * 0.99;
%wavplay(refasi,fs)
waon = [domisodo2,refasi,domisodo2];
wavplay(waon,fs)
