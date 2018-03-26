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

%energy loss

i = 1;
num10 = 0;
num25 = 0;
den = 0;
while(i<length(y));
    newnum10 = (y(i)- y10(i))^2;
    newnum25 = (y(i)- y25(i))^2;
    newden = y(i)^2;
    num10 = num10 + newnum10;
    num25 = num25 + newnum25;
    den = den + newden;
    i = i+1;
end

eloss10 = num10/den
eloss25 = num25/den