[x, fs] = audioread('si1188.wav');
% Case 1
mean = 2;
var = 5;
len = 1000;
rng(0,'twister');
h1 = mean.*randn(len,1)+sqrt(var);
y1 = conv(x,h1);
% Case 2
h2 = -2 + (2+4)*rand(1000,1);
y2 = conv(x,h2);
% Comparison
subplot(3,1,1);
plot(x);
title('input');
ylabel('x[n]');
xlabel('t*fs');

subplot(3,1,2);
plot(y1);
title('output1');
ylabel('y1[n]');
xlabel('t*fs');

subplot(3,1,3);
plot(y2);
title('output2');
ylabel('y2[n]');
xlabel('t*fs');
