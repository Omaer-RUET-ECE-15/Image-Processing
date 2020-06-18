%Md. Omaer Faruq Goni
%RUET
%ECE - 15
clc;
clear all;
close all;
img_1=imread('as1.png');
subplot(221)
imshow(img_1)
%90 rotate
for i=1:1:400
   edit_img(401-i,:,1)=img_1(:,i,1); 
   edit_img(401-i,:,2)=img_1(:,i,2); 
   edit_img(401-i,:,3)=img_1(:,i,3); 
end
subplot(222)
imshow(edit_img)
%180 rotate
for i=1:1:400
   edit_img2(401-i,:,1)=edit_img(:,i,1); 
   edit_img2(401-i,:,2)=edit_img(:,i,2); 
   edit_img2(401-i,:,3)=edit_img(:,i,3); 
end
subplot(223)
imshow(edit_img2)