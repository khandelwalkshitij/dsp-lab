[x,fs] = audioread('si1188.wav');
N = length(x);
n = 0:1/fs:(N-1)/fs;
y = fft(x,N);
subplot(3,2,1);
plot(n,x);
ylabel('Orignial Signal');
xlabel('time in seconds')
subplot(3,2,3);
plot(abs(y));
ylabel('Magnitude of DFT');
xlabel('Frequency in Hz');
subplot(3,2,5);
plot(angle(y));
ylabel('Phase of DFT');
xlabel('Frequency in Hz');
%For 2N DFT
n = 0:1/fs:(N-1)/fs;
y = fft(x,2*N);
subplot(3,2,2);
plot(n,x);
ylabel('Orignial Signal');
xlabel('time in seconds')
subplot(3,2,4);
plot(abs(y));
ylabel('Magnitude of DFT with 2N');
xlabel('Frequency in Hz');
subplot(3,2,6);
plot(angle(y));
ylabel('Phase of DFT with 2N');
xlabel('Frequency in Hz');
