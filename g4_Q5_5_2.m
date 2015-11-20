%Q5_5_2
clear all; close all;

%% 5����

fs = 48000; %�T���v�����O���g��
N4 = 90; %4��������1���Ԃɉ����H
n4byo = 60/N4; %4������1�̕b��
n4smpl = round(fs*n4byo); %4������1�̃T���v�����Bround�͎l�̌ܓ�
n4smpl = fix(n4smpl/16) * 16; %n4smpl��16�̔{���ɂ��Ă����B
syou = 2;%���ߐ�
% Num4 = 4*syou; %�Ȃ̒�����4�������̐��ŕ\���B
%���̐��l��́A1���߂�4�ŁA16���߂̋Ȃ̏ꍇ
Num4 = 4*syou; %�Ȃ̒�����4�������̐��ŕ\���B

Nall = n4smpl * Num4; %�Ȃ̑S��
out = zeros(1,Nall); %���x�N�g���Ƃ��Ē�`
len = fs * 1; tt = [1:n4smpl]/fs; %4�������̒���
fdo = 261.6; %�u�h�v�̎��g��
%% �����A�x��
%8������
z = 0.5;
t8 = tt(1,1:n4smpl*z);
%�x��
kyuuhu4 = zeros(1,n4smpl); %4���x��
kyuuhu8 = zeros(1,n4smpl*z); %8���x��

%% Trumpet(���Ǌy��)

aa(1)=1;
aa(2)=0;  % ��{���Ȃ̂�a2,a4�� 0
aa(3)=0.6;
aa(4)=0;
aa(5)=0.4;

%4������
do4t = oto_harm(tt,fdo,aa,1);
re4t = oto_harm(tt,fdo*2^(2/12),aa,1);
mi4t = oto_harm(tt,fdo*2^(4/12),aa,1);
fa4t = oto_harm(tt,fdo*2^(5/12),aa,1);
so4t = oto_harm(tt,fdo*2^(7/12),aa,1);
ra4t = oto_harm(tt,fdo*2^(9/12),aa,1);
si4t = oto_harm(tt,fdo*2^(11/12),aa,1);
%8������
do8t = oto_harm(t8,fdo,aa,1);
re8t = oto_harm(t8,fdo*2^(2/12),aa,1);
mi8t = oto_harm(t8,fdo*2^(4/12),aa,1);
fa8t = oto_harm(t8,fdo*2^(5/12),aa,1);
so8t = oto_harm(t8,fdo*2^(7/12),aa,1);
ra8t = oto_harm(t8,fdo*2^(9/12),aa,1);
si8t = oto_harm(t8,fdo*2^(11/12),aa,1);


%% Flute(�؊Ǌy��)

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

%% piano(���y��)

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