x = [10, -5, 2, 0, 7, 19, 3, 8, 4, 2,10, 12];
h1 = [1 2 3 4];
h2 = [1 1 1 1];
w = conv(x,h1);
y = conv(w,h2);

stem(y);
title('Output');
xlabel('t');
ylabel('y[n] = w[n]*h2[n]');
