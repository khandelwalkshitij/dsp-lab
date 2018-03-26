f = [100 200 400 600 800 1000 1200 1400];
fs = 5000;
t = 0:1/fs:0.1;
x = sin(2*pi*f'*t);
x = sum(x);
plot(t,abs(x));
xlabel('time');
ylabel('magnitude response');
title('X(t)');