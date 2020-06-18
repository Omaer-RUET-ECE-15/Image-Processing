clc;
clear all;
close all;
img_1=imread('cri_rec.png');
img_2=rgb2gray(img_1);
subplot(221)
imshow(img_2)
title('Original Image')
[w h]=size(img_2)
temp=img_2;
img_3=temp;
img_4=temp;
for i=1:w-2
   for j=1:h-2
       img_3(i+2,j+2)=-temp(i,j)-2*temp(i,j+1)-temp(i,j+2)...
           +temp(i+2,j)+2*temp(i+2,j+1)+temp(i+2,j+2);
       img_4(i+2,j+2)=-temp(i,j)+temp(i,j+2)...
          -2*temp(i+1,j)+2*temp(i+1,j+2)...
          -temp(i+2,j)+temp(i+2,j+2);
   end
end
subplot(222)
imshow(img_3)
title('X direction Filter')
subplot(223)
imshow(img_4)
title('y direction Filter')



% temp=zeros(w+2,h+2);
% cast(temp,'like',img_2);
% temp((2:w+1),(2:h+1))=img_2;
% size(temp)
% subplot(222)
% imshow(temp)