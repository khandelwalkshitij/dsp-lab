f1 = 170;
f2 = 390;
fs = 6630;

N1 = 170;
num1 = 0:N1-1;
numm1 = -N1/2:(N1-1)/2;
x1 = cos(2*pi*(f1/fs)*num1) + cos(2*pi*(f2/fs)*num1);
y1 = fft(x1,N1);
y1shft = fftshift(y1);

%Plotting
subplot(3,1,1);
stem(num1,x1);
title('Time Domain N=170')
xlabel('n');
ylabel('Magnitude');
subplot(3,1,2);
stem(num1,abs(y1));
title('Magnitude Response N=170')
xlabel('n');
ylabel('Magnitude');
subplot(3,1,3);
stem(numm1,abs(y1shft));
title('Magnitude Response N=170')
xlabel('Shifted n');
ylabel('Magnitude');
