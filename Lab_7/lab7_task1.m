x = imread('toysflash.png');
xRed = x(:,:,1);
xGre = x(:,:,2);
xBlu = x(:,:,3);

figure(1);
subplot(2,2,1);
imshow(x);
title('RGB Image');
subplot(2,2,2);
imshow(xRed);
title('Red');
subplot(2,2,3);
imshow(xGre);
title('Green');
subplot(2,2,4);
imshow(xBlu);
title('Blue');
imwrite(x,'mytoysflash.jpg');

figure(2);
y = rgb2gray(x);
subplot(2,2,1);
imshow(y);
yResize = imresize(y,0.1);
subplot(2,2,2);
imshow(yResize);
yComp = imcomplement(y);

subplot(2,2,3);
imshow(yComp);
yFlip = fliplr(y);
subplot(2,2,4);
imshow(yFlip);

yThresh = y;
for i = 1:684
    for j = 1:912
        if y(i,j)<50
            yThresh(i,j) = 0;
        elseif y(i,j)>150
            yThresh(i,j) = 255;
        else
            continue;
        end
    end
end

figure(3);
subplot(2,2,1);
imshow(y);
subplot(2,2,2);
imshow(yThresh);