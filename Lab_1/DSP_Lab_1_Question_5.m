function mult3(x)
len = length(x);
count = 0;
for i = 1:len
    y = x(i)/3;
    if (round(y)== y);
        count = count + 1;
    end;
end;
count