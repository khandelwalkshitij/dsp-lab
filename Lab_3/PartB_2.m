f = 10;
fs = 100;
t = 0:2*pi/100:pi;
x1 = sin(10*t);

x2 = sin(10*t + pi/4);

y1 = PartB_1(x1,10);
y2 = PartB_1(x2,10);
subplot(2,1,1);
stem(abs(y1));
ylabel('|X3[k]|');
subplot(2,1,2);
stem(abs(y2));
ylabel('|Y[k]|')