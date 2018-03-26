x = imread('cameraman.tif');
xPrewitt = edge(x,'prewitt');
xCanny = edge(x,'canny');
xSobel = edge(x,'sobel');
xRoberts = edge(x,'roberts');

figure(1);
subplot(2,2,1)
imshow(xPrewitt);
title('Prewitt Edge');
subplot(2,2,2)
imshow(xCanny);
title('Canny Edge');
subplot(2,2,3)
imshow(xSobel);
title('Sobel Edge');
subplot(2,2,4)
imshow(xRoberts);
title('Roberts Edge');

gx = [-1 0 1];
gx = [gx;gx;gx];
gy = [-1 -1 -1; 0 0 0; 1 1 1];
xEdgeX = imfilter(x,gx);
xEdgeY = imfilter(x,gy);
z = (double(xEdgeX)).^2+ (double(xEdgeY)).^2;
z = uint8(z.^0.5);
figure(2);
subplot(2,2,1)
imshow(x);
title('Original Image')
subplot(2,2,2)
imshow(xEdgeX);
title('Edges in X-direction')
subplot(2,2,3)
imshow(xEdgeY);
title('Edges in Y-direcrion')
subplot(2,2,4)
imshow(z);
title('Complete Edges')