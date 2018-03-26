%bpf
N = 12;
Wp = [345 1117];
fs = 5000;
Wn = Wp/(fs/2);
b = fir1(N,Wn);
[h,w] = freqz(b);

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