%Md. Omaer Faruq Goni
%1510033
%ECE-15
%Course No. : ECE-4223
%Boundary Extraction
clc;
clear all;
close all;
data = [0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 0,
    0, 0, 1, 1, 1, 1, 1, 0,
    0, 1, 1, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 0,
    0, 0, 0, 1, 1, 1, 1, 0,
    0, 0, 0, 0, 0, 0, 0, 0]
data_res = data;
[row, col] = size(data);
kernel = [1, 1, 1,
                   1, 1, 1,
                   1, 1, 1];
 for i = 2:row-1
     for j = 2:col-1
          temp = data(i - 1, j - 1) + data(i - 1, j ) + data(i - 1, j + 1) +...
             data(i, j - 1) + data(i, j) + data(i, j + 1) +...
             data(i + 1, j - 1) + data(i + 1, j) + data(i + 1, j + 1);
         if temp == 9
             data_res(i, j) = 1;
         else
             data_res(i, j) = 0;
         end
     end
 end
%2nd part
 for i = 2:row-1
     for j = 2:col-1
         if data_res(i, j) == data(i, j)
             data_res(i, j) = 0;
         else
             data_res(i, j) = 1;
         end
     end
 end
 data_res