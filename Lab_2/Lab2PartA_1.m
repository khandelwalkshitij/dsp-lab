t  = 0:0.00025:2;
y = sin(2*pi*5*t);
plot(t,y);
ylabel('sin(2*pi*5*t)');
xlabel('time');
title('Sin function with frequency 5Hz and sampled at 4000Hz')
