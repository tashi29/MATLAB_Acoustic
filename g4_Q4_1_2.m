%Q4_1_2

%‡@
[x,fs] = wavread('aiueok_fem1.wav');
%‡A
figure(1)
plot(x)
%‡B
t = [0:length(x)-1]/fs;
figure(2)
plot(t,x)
