xn = [1 6 1 4];
hn = [4 5 0 6 0 9];
N = max(length(xn),length(hn));
ycn = cconv(xn,hn,N);
n = 0:1:N-1;
stem(n,ycn);
xlabel('n');
ylabel('yc[n]');
title('6-point Circular convolution');