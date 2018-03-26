Rs = 50; %Value in dB
Rp = 0.01; %Value in dB
Wp = 1400;
Ws = 800;
Fs = 5000;

f = [100 200 400 600 800 1000 1200 1400];
t = 0:1/Fs:0.1;
x = sin(2*pi*f'*t);
x = sum(x);

f = 0:10:5000;

[N, Wn] = buttord(2*Wp/Fs,2*Ws/Fs,Rp,Rs);
[b,a] = butter(N,Wn,'high');
dataIn = x;
y1 = filter(b,a,dataIn);
y1mag = abs(fft(y1));

[N, Wn] = cheb1ord(2*Wp/Fs,2*Ws/Fs,Rp,Rs);
[b,a] = cheby1(N,Rp,Wn,'high');
dataIn = x;
y2 = filter(b,a,dataIn);
y2mag = abs(fft(y2));

[N, Wn] = cheb2ord(2*Wp/Fs,2*Ws/Fs,Rp,Rs);
[b,a] = cheby2(N,Rs,Wn,'high');
dataIn = x;
y3 = filter(b,a,dataIn);
y3mag = abs(fft(y2));

[N, Wn] = ellipord(2*Wp/Fs,2*Ws/Fs,Rp,Rs);
[b,a] = ellip(N,Rp,Rs,Wn,'high');
dataIn = x;
y4 = filter(b,a,dataIn);
y4mag = abs(fft(y4));

figure;
subplot(4,2,1);
plot(f,20*log10(y1mag));
ylabel('Magnitude (dB)');
xlabel('f');
subplot(4,2,2);
plot(t,y1);
ylabel('Signal');
xlabel('time (s)');

subplot(4,2,3);
plot(f,20*log10(y2mag));
ylabel('Magnitude (dB)');
xlabel('f');
subplot(4,2,4);
plot(t,y2);
ylabel('Signal');
xlabel('time (s)');

subplot(4,2,5);
plot(f,20*log10(y3mag));
ylabel('Magnitude (dB)');
xlabel('f');
subplot(4,2,6);
plot(t,y3);
ylabel('Signal');
xlabel('time (s)');

subplot(4,2,7);
plot(f,20*log10(y4mag));
ylabel('Magnitude (dB)');
xlabel('f');
subplot(4,2,8);
plot(t,y4);
ylabel('Signal');
xlabel('time (s)');