%Md. Omaer Faruq Goni
%1510033
%ECE-15
%Course No. : ECE-4223
%Boundary Extraction
clc;
clear all;
close all;
img = [0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 1, 0, 0, 1, 1, 1, 0, 0,
            0, 1, 0, 0, 0, 1, 0, 0, 0,
            0, 1, 0, 0, 0, 1, 1, 1, 0,
            0, 1, 1, 0, 0, 1, 0, 0, 0,
            0, 0, 1, 0, 1, 0, 1, 0, 0,
            0, 0, 1, 0, 1, 1, 1, 1, 0,
            0, 0, 1, 0, 1, 1, 1, 1, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0]
b1 =[0, 1, 0,
         1, 1, 1,
         1, 1, 1]
b2 =[1, 0, 0,
         0, 0, 0,
         0, 0, 0]
 % data eroted by b1
 [row, col] = size(img);
 res_1 = zeros(row, col);
 res_2 = zeros(row, col);
 for i = 2:row - 1
     for j = 2:col - 1
         temp =img(i -1, j) +...
             img(i , j - 1) + img(i , j) + img(i , j + 1) + ...
              img(i+1 , j - 1) + img(i+1 , j) + img(i+1 , j + 1); 
         if temp == 7
             res_1(i, j) = 1;
         end
     end
 end
 res_1
 img_com = abs(img - 1)
 for i = 2:row - 1
     for j = 2:col - 1
         if img_com(i - 1, j - 1) == 1
             res_2(i, j) = 1;
         end
     end
 end
 res_2
 res_1 .* res_2