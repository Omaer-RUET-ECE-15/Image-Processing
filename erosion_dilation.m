clc;
clear all;
close all;
%%
img_1=im2bw(imread('erosion_dilution_1.png'));
[w,h]=size(img_1);
img_2=img_1;
img_3=img_1;
subplot(221)
%figure
imshow(img_1)
title('original image');
%%
%erosion operation
for i=2:w-1
   for j=2:h-1
      temp=img_1(i,j)+img_1(i,j+1)+img_1(i,j-1)+...
          img_1(i-1,j)+img_1(i-1,j+1)+img_1(i-1,j-1)+...
          img_1(i+1,j)+img_1(i+1,j+1)+img_1(i+1,j-1);
      temp=temp/9;
      if temp==1
          img_2(i,j)=1;
      else
          img_2(i,j)=0;
      end
   end
end
%%
%dilation operation
for i=2:w-1
   for j=2:h-1
      temp=img_1(i,j)+img_1(i,j+1)+img_1(i,j-1)+...
          img_1(i-1,j)+img_1(i-1,j+1)+img_1(i-1,j-1)+...
          img_1(i+1,j)+img_1(i+1,j+1)+img_1(i+1,j-1);
      temp=temp/9;
      if temp==0
          img_3(i,j)=0;
      else
          img_3(i,j)=1;
      end
   end
end
%%
%figure
subplot(222)
imshow(img_2);
title('Eroted image');

subplot(223)
imshow(img_3);
title('Dilated image');