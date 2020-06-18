clc;
clear all;
close all;
img_1=imread('histo.png');
img_2=rgb2gray(img_1);
figure
imshow(img_2);
[l b h]=size(img_2)
r=[20 120];
w=[150 180];
%plot(r,w);
alpha=w(1)/r(1);
beta=(w(2)-w(1))/(r(2)-r(1));
gamma=(255-w(2))/(255-r(2));
for i=1:l
   for j=1:b
      if img_2(i,j)<=r(1)
          img_2(i,j)=img_2(i,j)*alpha;
      elseif img_2(i,j)>r(1)|img_2(i,j)<=r(2)
          img_2(i,j)=(img_2(i,j)-r(1))*beta+w(1);
      else
          img_2(i,j)=(img_2(i,j)-r(2))*gamma+w(2);
      end
   end
end
figure
imshow(img_2);