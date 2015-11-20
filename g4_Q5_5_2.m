%Q5_5_2
clear all; close all;

%% 5線譜

fs = 48000; %サンプリング周波数
N4 = 90; %4分音符が1分間に何個か？
n4byo = 60/N4; %4分音符1個の秒数
n4smpl = round(fs*n4byo); %4分音符1個のサンプル数。roundは四捨五入
n4smpl = fix(n4smpl/16) * 16; %n4smplを16の倍数にしておく。
syou = 2;%小節数
% Num4 = 4*syou; %曲の長さを4分音符の数で表す。
%この数値例は、1小節に4個で、16小節の曲の場合
Num4 = 4*syou; %曲の長さを4分音符の数で表す。

Nall = n4smpl * Num4; %曲の全長
out = zeros(1,Nall); %横ベクトルとして定義
len = fs * 1; tt = [1:n4smpl]/fs; %4分音符の長さ
fdo = 261.6; %「ド」の周波数
%% 音符、休符
%8分音符
z = 0.5;
t8 = tt(1,1:n4smpl*z);
%休符
kyuuhu4 = zeros(1,n4smpl); %4分休符
kyuuhu8 = zeros(1,n4smpl*z); %8分休符

%% Trumpet(金管楽器)

aa(1)=1;
aa(2)=0;  % 奇数倍音なのでa2,a4は 0
aa(3)=0.6;
aa(4)=0;
aa(5)=0.4;

%4分音符
do4t = oto_harm(tt,fdo,aa,1);
re4t = oto_harm(tt,fdo*2^(2/12),aa,1);
mi4t = oto_harm(tt,fdo*2^(4/12),aa,1);
fa4t = oto_harm(tt,fdo*2^(5/12),aa,1);
so4t = oto_harm(tt,fdo*2^(7/12),aa,1);
ra4t = oto_harm(tt,fdo*2^(9/12),aa,1);
si4t = oto_harm(tt,fdo*2^(11/12),aa,1);
%8分音符
do8t = oto_harm(t8,fdo,aa,1);
re8t = oto_harm(t8,fdo*2^(2/12),aa,1);
mi8t = oto_harm(t8,fdo*2^(4/12),aa,1);
fa8t = oto_harm(t8,fdo*2^(5/12),aa,1);
so8t = oto_harm(t8,fdo*2^(7/12),aa,1);
ra8t = oto_harm(t8,fdo*2^(9/12),aa,1);
si8t = oto_harm(t8,fdo*2^(11/12),aa,1);


%% Flute(木管楽器)

aa(1)=1;
aa(2)=1/3;  
aa(3)=1/9;
aa(4)=1/30;
aa(5)=0;

do4f = oto_harm(tt,fdo*2,aa,1);
re4f = oto_harm(tt,fdo*2^(2/12)*2,aa,1);
mi4f = oto_harm(tt,fdo*2^(4/12)*2,aa,1);
fa4f = oto_harm(tt,fdo*2^(5/12)*2,aa,1);
so4f = oto_harm(tt,fdo*2^(7/12)*2,aa,1);
ra4f = oto_harm(tt,fdo*2^(9/12)*2,aa,1);
si4f = oto_harm(tt,fdo*2^(11/12)*2,aa,1);

%% piano(弦楽器)

a = log (0.1) / (-0.5);
ee = exp((-a)*tt);

do4p = oto_harm(tt,fdo,aa,0);
re4p = oto_harm(tt,fdo*2^(2/12),aa,0);
mi4p = oto_harm(tt,fdo*2^(4/12),aa,1);
fa4p = oto_harm(tt,fdo*2^(5/12),aa,1);
so4p = oto_harm(tt,fdo*2^(7/12),aa,1);
ra4p = oto_harm(tt,fdo*2^(9/12),aa,1);
si4p = oto_harm(tt,fdo*2^(11/12),aa,1);

do4p = do4p.*ee;
re4p = re4p.*ee;
mi4p = mi4p.*ee;
fa4p = fa4p.*ee;
so4p = so4p.*ee;
ra4p = ra4p.*ee;
si4p = si4p.*ee;

%% kaeru
n=1;j=32000;
out(n:n+j-1) = out(n:n+j-1) + do4t;
n=j;
out(n:n+j-1) = out(n:n+j-1) + re4t;
n=j*2;
out(n:n+j-1) = out(n:n+j-1) + mi4t;
n=j*3;
out(n:n+j-1) = out(n:n+j-1) + fa4t;
n=j*4;
out(n:n+j-1) = out(n:n+j-1) + mi4t;
n=j*5;
out(n:n+j-1) = out(n:n+j-1) + re4t;
n=j*6;
out(n:n+j-1) = out(n:n+j-1) + do4t;
n=j*7;
out(n:n+j-1) = out(n:n+j-1) + do4t;

out = out/max(abs(out)) *0.99;
% wavplay(out,fs)
plot(out)