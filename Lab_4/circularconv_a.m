xn = [1 6 1 4];
hn = [4 5 0 6 0 9];
yn = conv(xn,hn);
n = 0:1:8;
stem(n,yn);
xlabel('n');
ylabel('y[n]');