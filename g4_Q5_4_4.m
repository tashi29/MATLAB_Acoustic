%Q5_4_4
fs = 8000;
f = 500;
tt =[1:fs]/fs;
omega = 2*pi*f;
yy = sin(omega*tt) + 1/3*sin(2*omega*tt) + 1/9*sin(3*omega*tt) + 1/30*sin(4*omega*tt);
wavplay(yy,fs)