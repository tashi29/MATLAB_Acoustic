%Q5_3_1

%①
ff = 261.6;
fs = 8000;
t = [1:fs]/fs;
y = sin(2*pi*ff*t); %1/4秒の時、tをt(1,1:1/fs)

%wavplay(y,fs,'sync')

yy = sin(2*pi*(ff*2)*t); %１オクターブ上の「ド」
y2 = sin(2*pi*(ff/2)*t); %１オクターブ下の「ド」
zz = zeros(1,fs*0.5);
yall = [y,zz,yy,zz,y,zz,y2,zz,y];
wavplay(yall,fs,'sync')
