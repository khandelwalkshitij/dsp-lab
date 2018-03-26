f1 = 170;
f2 = 390;
fs = 6630;

N1 = 170;
num1 = 0:N1-1;
x1 = cos(2*pi*(f1/fs)*num1) + cos(2*pi*(f2/fs)*num1);
y1 = fft(x1,N1);

N2 = 390;
num2 = 0:N2-1;
x2 = cos(2*pi*(f1/fs)*num2) + cos(2*pi*(f2/fs)*num2);
y2 = fft(x2,N2);

N3 = 663;
num3 = 0:N3-1;
x3 = cos(2*pi*(f1/fs)*num3) + cos(2*pi*(f2/fs)*num3);
y3 = fft(x3,N3);

N4 = 200;
num4 = 0:N4-1;
x4 = cos(2*pi*(f1/fs)*num4) + cos(2*pi*(f2/fs)*num4);
y4 = fft(x4,N4);

%Plotting
subplot(4,2,1);
stem(num1,x1);
title('Time Domain N=170')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,2);
stem(num1,abs(y1));
title('Magnitude Response N=170')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,3);
stem(num2,x2);
title('Time Domain N=390')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,4);
stem(num2,abs(y2));
title('Magnitude Response N=390')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,5);
stem(num3,x3);
title('Time Domain N=663')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,6);
stem(num3,abs(y3));
title('Magnitude Response N=663')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,7);
stem(num4,x4);
title('Time Domain N=200')
xlabel('n');
ylabel('Magnitude');
subplot(4,2,8);
stem(num4,abs(y4));
title('Magnitude Response N=200')
xlabel('n');
ylabel('Magnitude');