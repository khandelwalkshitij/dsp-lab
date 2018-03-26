[y fs] = audioread('si1188.wav');

%10 percent threshold
z = dct(y);
thresh10 = 0.1*max(z);
i = 1;
while(i<length(z))
    if z(i) < thresh10
        z(i) = 0;
    end
    i = i+1;
end
y10 = idct(z);
e10 = y - y10;
%25 percent threshold
z = dct(y);
thresh25 = 0.25*max(z);
i = 1;
while(i<length(z))
    if z(i) < thresh25
        z(i) = 0;
    end
    i = i+1;
end
y25 = idct(z);
e25 = y - y25;

%plotting
%original
subplot(4,2,1);
stem(y,'.');
title('Original');
subplot(4,2,2);
stem(abs(dct(y)),'.');
title('Original');
%10 percent
subplot(4,2,3);
stem(y10,'.')
title('10% thresh');
subplot(4,2,4);
stem(abs(dct(y10)),'.');
title('10% thresh');
%25 percent
subplot(4,2,5);
stem(y25,'.');
title('25% thresh');
subplot(4,2,6);
stem(abs(dct(y25)),'.');
title('25% thresh');
%errors
subplot(4,2,7);
stem(abs(e10),'.');
title('absolute e10');
subplot(4,2,8);
stem(abs(e25),'.');
title('absolute e25');