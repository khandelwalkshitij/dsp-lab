function y = PartB_1(x,N)
k = 1;
j = sqrt(-1);
y = zeros(1,N);
while k < N+1
    m = 1;
    while m < N+1
        ynew = x(m)*(exp(-1*2*j*3.14*(k-1)*(m-1)/N));
        y(k) = y(k) + ynew;
        m = m+1;
    end
    k = k+1;
end
end