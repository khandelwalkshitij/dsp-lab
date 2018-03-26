x = imread('cameraman.tif');
subplot(2,3,1);
imshow(x);
title('Original')
avFil = ones(3);
avFil = avFil/9;
xFil= imfilter(x,avFil);
subplot(2,3,2);
imshow(xFil);
title('Average Filtered')
avFilSp = fspecial('average',3);
xFilSp= imfilter(x,avFilSp);
subplot(2,3,3);
imshow(xFilSp);
title('Average Filtered (fspecial)')
xNoise = imnoise(x,'salt & pepper',0.1);
subplot(2,3,4);
imshow(xNoise);
title('Salt and Pepper Noise Added')
xNoiseRemMed = medfilt2(xNoise);
subplot(2,3,5);
imshow(xNoiseRemMed);
title('Noise Removal using medfilt2')
xNoiseRemAvg = imfilter(xNoise,avFilSp);
subplot(2,3,6);
imshow(xNoiseRemAvg);
title('Noise Removal using average Filter')