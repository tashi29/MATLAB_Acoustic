%Q4_2_3

%�@
[x,fs] = wavread('aiueok_fem1.wav');
%�A
%plot(x)
%�B
grid on
%�C
%「あ」
subplot(2,3,1)
plot(x(9200:12000))
%「い」
subplot(2,3,2)
plot(x(13300:15800))
%「う」
subplot(2,3,3)
plot(x(17100:19800))
%「え」
subplot(2,3,4)
plot(x(20900:23700))
%「お」
subplot(2,3,5)
plot(x(24800:26700))
