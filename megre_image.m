%Md. Omaer Faruq Goni
%RUET
%ECE - 15
clc;
clear all;
close all;
img_1=imread('as1.png');
img_2=imread('as2.png');
subplot(221)
imshow(img_1)
subplot(222)
imshow(img_2)
pos_1=1;
pos_2=201;
for i=1:2:400
    edit_img(:,pos_1,1)=img_1(:,i,1);
    edit_img(:,pos_1,2)=img_1(:,i,2);
    edit_img(:,pos_1,3)=img_1(:,i,3);
    pos_1=pos_1+1;
    
    edit_img(:,pos_2,1)=img_2(:,i,1);
    edit_img(:,pos_2,2)=img_2(:,i,2);
    edit_img(:,pos_2,3)=img_2(:,i,3);
    pos_2=pos_2+1;
end
size(img_1)
size(img_2)
size(edit_img)
subplot(223)
imshow(edit_img);