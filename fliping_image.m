%Md. Omaer Faruq Goni
%RUET
%ECE - 15
clc;
clear all;
close all;
img_1=imread('small.png');
subplot(121)
imshow(img_1);
[height,width,color]=size(img_1);
edit_image=zeros(height,width,color);
edit_image=cast(edit_image,'like',img_1);
for i=1:1:width
    for j=1:1:3
       edit_image(:,i,j)=img_1(:,width-i+1,j); 
    end 
end
subplot(122)
imshow(edit_image);