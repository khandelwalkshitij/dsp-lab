t  = 0:0.00025:2;
y1 = sin(2*pi*10*t);
y2 = sin(2*pi*20*t);
y3 = sin(2*pi*50*t);
y = y1+y2+y3;
plot(t,y);
ylabel('signal');
xlabel('time');
title('Multi-freq-sin function with frequencies 10, 20 and 50 Hz and sampled at 4000Hz for 2s')