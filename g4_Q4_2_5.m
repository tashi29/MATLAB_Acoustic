%Q4_2_5

%‡@
[x,fs] = wavread('aiueok_fem1.wav');
%‡A
% plot(x)
% grid on
%‡B u‚ `‚©v
aaa = x(9000:12500);
iii = x(13000:16000);
uuu = x(17000:20000);
eee = x(20500:24000);
ooo = x(24500:27000);
kaa = x(32500:36000);
%‡C uÔ‚¢Šçv
out = [aaa;kaa;iii;kaa;ooo];
wavplay(out,fs)