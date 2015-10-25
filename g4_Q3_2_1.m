%Q.3.2.1
clear all; close all
x=-10:1:10;
y=x.*x;
plot(x,y);
hold on;
y=y+10;
plot(x,y,'r');
legend('x‚Ì‚Qæ','x‚Ì‚Qæ{10');