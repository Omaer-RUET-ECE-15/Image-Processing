clc;
clear all;
close all;
img_1=imread('histo.png');
temp=img_1;
figure
imshow(img_1);
[l b h]=size(img_1);
r=[20 120];
w=[150 180];
alpha=w(1)/r(1);
beta=(w(2)-w(1))/(r(2)-r(1));
gamma=(255-w(2))/(255-r(2));
for k=1:3
for i=1:l
   for j=1:b
      if img_1(i,j,k)<=r(1)
          img_1(i,j,k)=img_1(i,j,k)*alpha;
      elseif img_1(i,j,k)>r(1)|img_1(i,j,k)<=r(2)
          img_1(i,j,k)=(img_1(i,j,k)-r(1))*beta+w(1);
      else
          img_1(i,j,k)=(img_1(i,j,k)-r(2))*gamma+w(2);
      end
   end
end
end
figure
imshow(img_1);