%Q3_2_2

clear all;close all
%①
x = 0:0.1:10
%②
y = sin(x)
%③
plot(x,y)
%④
xlabel('時間[t]')
ylabel('電圧[V]')
%⑤
title('正弦波信号')
%⑥
grid on
%考察
%グラフより周期は約6.3秒程度。よって2π。
