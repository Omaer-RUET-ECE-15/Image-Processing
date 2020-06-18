%Md. Omaer Faruq Goni
%1510033
%ECE-15
%Course No. : ECE-4223
%Boundary Extraction
clc;
clear all;
data_res = [0     0     0     0     0     0     0     0
     0     0     0     0     1     1     1     0
     0     0     0     1     1     0     1     0
     0     0     1     1     0     0     1     0
     0     1     1     1     0     0     1     0
     0     0     0     1     0     0     1     0
     0     0     0     1     0     0     1     0
     0     0     0     1     0     0     1     0
     0     0     0     1     1     1     1     0
     0     0     0     0     0     0     0     0];
 [row, col] = size(data_res);
region_com = abs(data_res - 1)
 region_0 = zeros(row, col);
 region_1 = zeros(row, col);
 region_0(4, 5) = 1;
 for k =1:10
     for i = 2:row-1
         for j = 2:col-1
              temp =  region_0(i - 1, j ) +...
                 region_0(i, j - 1) + region_0(i, j) + region_0(i, j + 1) +...
                  region_0(i + 1, j) ;
             if temp >0
                 region_1(i, j) = 1;
             else
                 region_1(i, j) = 0;
             end
         end
     end
     region_1 = region_1 .* region_com;
     region_0 = region_1;
 end
 region_1 + data_res