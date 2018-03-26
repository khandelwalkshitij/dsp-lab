t  = 0:0.00025:2;
t1  = 0:0.00025:0.5;
t2  = 0.50025:0.00025:1.5;
t3  = 1.50025:0.00025:2;

y1 = sin(2*pi*10*t1);
y1_r1 = 0*t2;
y1_r2 = 0*t3;
y1 = [y1 y1_r1 y1_r2];

y2 = sin(2*pi*20*t2);
y2_r1 = 0*t1;
y2_r2 = 0*t3;
y2 = [y2_r1 y2 y2_r2];

y3 = sin(2*pi*50*t3);
y3_r1 = 0*t1;
y3_r2 = 0*t2;
y3 = [y3_r1 y3_r2 y3];

y = y1+y2+y3;
stem(t,y);
ylabel('signal');
xlabel('time');
title('Multi-freq-non-stat sin function with frequencies 10, 20 and 50 Hz, Fs=4000Hz for 2s')