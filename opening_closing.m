clc;
clear all;
close all;
%%
img_1=im2bw(imread('erosion_dilution_1.png'));
[w,h]=size(img_1);
se = strel('disk',5)
img_2=imopen(img_1,se);
img_3=se;
subplot(221)
%figure
imshow(img_1)
title('original image');
subplot(222)
%figure
imshow(img_2)
title('opening image');