clc;
clear all;
close all;
img_1=imread('small.png');

subplot(221)
imshow(img_1);
title('Original image');

%RGB to GRAY
img_2=rgb2gray(img_1);
subplot(222)
imshow(img_2);
title('Grayscale image');

%RGB to Black & White
img_2=im2bw(img_1);
subplot(223)
imshow(img_2);
title('Black and White image');

[a b c]=size(img_1)
for i=1:1:a
    for j=1:1:b
        img_1(i,j)=img_1(i,j)+100;
    end
end
subplot(224)
imshow(img_1);
title('After adding 100 to each pixel')