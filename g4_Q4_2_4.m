%Q4_2_4

%‡@
[x,fs] = wavread('aiueok_fem1.wav');
%‡A
plot(x)
grid on
%‡B u‚ `‚¦v‚Ì’Šo
%wavplay(x(5001:25000),fs,'sync')
%‡C u‚¦v‚Ì’Šo
%wavplay(x(20000:25000),fs,'sync')
%‡D 
eee = x(20000:25000);
wavplay(eee,fs,'sync')
