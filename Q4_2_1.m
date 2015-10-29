%Q4_2_1

%‡@
[xx,fs] = wavread('aiueok_fem1.wav');
%‡A
Len = length(xx);
%‡B
wavplay(xx(1:Len/2,1),fs,'sync')
%‡C
zz = zeros(fs/2,1);
wavplay(zz,fs,'sync')
wavplay(xx(Len/2:end,1),fs,'sync')
