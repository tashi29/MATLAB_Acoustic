%Q5_1_3
fs = 8000; %TvOüg
t = [1:1*fs]/fs; %TvOüú
f500 = 500; %üg500Hz
f1000 = 1000; %üg1000Hz
y500 = sin(2*pi*f500*t); %üg500HzĚłˇg
y1000 = sin(2*pi*f1000*t); %üg1000Hz Ěłˇg
zz = zeros(1,fs*0.5); %0.5bŞĚ0zń0.5bĚłš)
yall = [y500,zz,y500,zz,y500,zz,y1000]; %ńzń
yall = yall/max(abs(yall))*0.99; %šş{[Ě˛Ž
wavplay(yall,fs) %ńĚÄś
wavwrite(yall,fs,'namae_jihou.wav') %ńđšşt@CÉŤÝ

