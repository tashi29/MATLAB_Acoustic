%Q5_1_3
fs = 8000; %�T���v�����O���g��
t = [1:1*fs]/fs; %�T���v�����O����
f500 = 500; %���g��500Hz
f1000 = 1000; %���g��1000Hz
y500 = sin(2*pi*f500*t); %���g��500Hz�̐����g
y1000 = sin(2*pi*f1000*t); %���g��1000Hz �̐����g
zz = zeros(1,fs*0.5); %0.5�b����0�z��0.5�b�̖���)
yall = [y500,zz,y500,zz,y500,zz,y1000]; %����z��
yall = yall/max(abs(yall))*0.99; %�����{�����[���̒���
wavplay(yall,fs) %����̍Đ�
wavwrite(yall,fs,'namae_jihou.wav') %����������t�@�C���ɏ�������

