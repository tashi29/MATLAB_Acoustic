%Q4_1_1
%‡@
[xx,fs] = wavread('aiueok_fem1.wav');
%‡A
Len = length(xx);
%‡B
byou = Len / fs;
%‡C
zz = xx(1:50,1);
%‡D
wavplay(xx,fs,'sync')