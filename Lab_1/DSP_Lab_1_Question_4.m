count = 0;
for i = 1:100
    y = x(i)/2;
    if (round(y)~= y);
        count = count + 1;
    end;
end;
count
        