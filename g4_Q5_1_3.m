%Q5_1_3
fs = 8000; %サンプリング周波数
t = [1:1*fs]/fs; %サンプリング周期
f500 = 500; %周波数500Hz
f1000 = 1000; %周波数1000Hz
y500 = sin(2*pi*f500*t); %周波数500Hzの正弦波
y1000 = sin(2*pi*f1000*t); %周波数1000Hz の正弦波
zz = zeros(1,fs*0.5); %0.5秒分の0配列0.5秒の無音)
yall = [y500,zz,y500,zz,y500,zz,y1000]; %時報配列
yall = yall/max(abs(yall))*0.99; %音声ボリュームの調整
wavplay(yall,fs) %時報の再生
wavwrite(yall,fs,'namae_jihou.wav') %時報を音声ファイルに書き込み

