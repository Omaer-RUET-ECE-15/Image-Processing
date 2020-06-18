%Md. Omaer Faruq Goni
%RUET
%ECE - 15
clc;
clear all;
close all;
k=2;
img_1=imread('small.png');
figure
imshow(img_1);
[height,width,color]=size(img_1);
edit_image=zeros(height,width*k-1,color);
edit_image=cast(edit_image,'like',img_1);
x=1;
y=1;
for i=1:1:height
    y=1;
   for j=1:1:width
       edit_image(x,y,1)=img_1(i,j,1);
       edit_image(x,y,2)=img_1(i,j,2);
       edit_image(x,y,3)=img_1(i,j,3);
       y=y+1;
       edit_image(x,y,1)=(img_1(i,j,1)+img_1(i,j,1))/2;
       edit_image(x,y,2)=(img_1(i,j,2)+img_1(i,j,2))/2;
       edit_image(x,y,3)=(img_1(i,j,3)+img_1(i,j,3))/2;
       y=y+1;
   end
   x=x+1;
end
figure
imshow(edit_image);

edit_image1=zeros(height*k-1,width*k-1);
edit_image1=cast(edit_image1,'like',edit_image);
x=1;
y=1;
for i=1:1:height
   for j=1:1:width*k-1
       edit_image1(x,y,1)=edit_image(i,j,1);
       edit_image1(x,y,2)=edit_image(i,j,2);
       edit_image1(x,y,3)=edit_image(i,j,3);
       x=x+1;
       edit_image1(x,y,1)=(edit_image(i,j,1)+edit_image(i,j,1))/2;
       edit_image1(x,y,2)=(edit_image(i,j,2)+edit_image(i,j,2))/2;
       edit_image1(x,y,3)=(edit_image(i,j,3)+edit_image(i,j,3))/2;
       x=x-1;
       y=y+1;
   end
   x=x+2;
   y=1;
end
figure
imshow(edit_image1);