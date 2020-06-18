clc;
clear all;
close all;
img_1=imread('moon.png');
img_2=rgb2gray(img_1);
img_3=img_2;
img_4=img_2;
img_5=img_2;
temp=img_2;
subplot(221)
imshow(img_2)
title('Original')
[w h]=size(img_2);
for i=1:w-2
   for j=1:h-2
      t=[temp(i,j),temp(i,j+1),temp(i,j+2),...
          temp(i+1,j),temp(i+1,j+1),temp(i+1,j+2),...
          temp(i+2,j),temp(i+2,j+1),temp(i+2,j+2)];
      img_3(i+2,j+2)=min(t);
      img_4(i+2,j+2)=mode(t);
      img_5(i+2,j+2)=max(t);
   end
end
subplot(222)
imshow(img_3)
title('Min Filter')
subplot(223)
imshow(img_4)
title('Mode Filter')
subplot(224)
imshow(img_5)
title('Max filter')