%hpf
clear;
fs= 5000;
fpass = 600;
dp = 0.08;
fstop = 400;
ds = 0.2;

dev = [0.2 0.08];
frequ = [400 600];
a = [0 1];
[n,fo,ao,w] = firpmord(frequ,a,dev,fs);
b = firpm(n,fo,ao,w);
[h,w] = freqz(b);
%here we get n = 14
figure;
subplot(2,1,1);
plot(w,abs(h));
ylabel('Magnitude');
xlabel('f');
title('Filter Frequency Spectrum (Mag)')
subplot(2,1,2);
plot(w,angle(h));
ylabel('Phase');
xlabel('f');
title('Filter Frequency Spectrum (Phase)')


f = [100 200 400 600 800 1000 1200 1400];
fs = 5000;
t = 0:1/fs:0.1;
x = sin(2*pi*f'*t);
x = sum(x);

y = filter(b,1,x);
ymag = abs(fftshift(fft(y)));
yang = angle(fftshift(fft(y)));
fre = -fs/2:10:fs/2;


figure;
subplot(2,3,1);
plot(t,x);
xlabel('time');
title('Original Signal');
subplot(2,3,2)
plot(fre,abs(fftshift(fft(x))));
subplot(2,3,3)
plot(fre,angle(fftshift(fft(x))));
subplot(2,3,4)
plot(t,y);
xlabel('time');
title('Filtered signal');
subplot(2,3,5)
plot(fre,ymag);
subplot(2,3,6)
plot(fre,yang);

figure;
zplane(b);