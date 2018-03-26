N = 1000;
fs = 10000;
freq = 0:10:fs-1;
subplot(4,2,1);
title('Rectangular time');
wrect = rectwin(1000);
plot(wrect);

subplot(4,2,2);
title('Rectangular mag');
magrect = -abs(20*log10(fft(wrect,N)));
plot(freq,magrect);

subplot(4,2,3);
whamm = hamming(1000);
plot(whamm);
title('Hamming time');

subplot(4,2,4);
title('Hamming mag');
maghamm = -abs(20*log10(fft(whamm,N)));
plot(freq,maghamm);

subplot(4,2,5);
whann = hanning(1000);
plot(whann);
title('Hanning time');

subplot(4,2,6);
title('Hanning mag');
maghann = -abs(20*log10(fft(whann,N)));
plot(freq,maghann);

subplot(4,2,7);
wblac = blackman(1000);
plot(wblac);
title('Blackman time');

subplot(4,2,8);
title('Blackman mag');
magblac = -abs(20*log10(fft(wblac,N)));
plot(freq,magblac);