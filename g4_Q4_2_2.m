%Q4_2_2

%‡@
[x,fs] = wavread('aiueok_fem1.wav');
%‡A
yy = fs * 2;
wavplay(xx(1:yy),fs,'sync')
%‡B
zz = fs *4;
aa = zeros(fs/2,1)
wavplay(aa,fs,'sync')
wavplay(xx(yy+1:zz),fs,'sync')
