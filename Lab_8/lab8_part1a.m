f = [100 200 400 600 800 1000 1200 1400];
fs = 5000;
t = 0:1/fs:0.1;
x = sin(2*pi*f'*t);
x = sum(x);
subplot(3,1,1);
plot(t,x);
xlabel('time');
ylabel('x(t)');
title('Time Domain Representation');
y = fft(x);
y = fftshift(y);
fre = -fs/2:10:fs/2;
subplot(3,1,2);
plot(fre,abs(y));
xlabel('frequency');
ylabel('|X(f)|');
title('Magnitude spectrum');
subplot(3,1,3);
plot(fre,angle(y));
xlabel('frequency');
ylabel('ang(X(f))');
title('Phase spectrum');