%Md. Omaer Faruq Goni
%1510033
%ECE-15
%Course No. : ECE-4223
%Boundary Extraction
clc;
clear all;
data = [0, 0, 0, 0, 0, 0, 0, 0, 0,
               0, 1, 1, 1, 0, 0, 0,0, 0,
               0, 1, 0, 1, 0, 0, 0, 0, 0,
               0, 1, 1, 1, 0, 0, 1, 1, 0,
               0, 1, 1, 0, 0, 0, 1, 1, 0,
               0, 1, 1, 0, 0, 1, 1, 1, 0,
               0, 1, 0, 1, 1, 0, 0, 1, 0,
               0, 0, 0, 1, 1, 1, 1, 1, 0,]
 b = [1  1  1
     1  1  1  
     1  1  1]
[row, col] = size(data);
temp_1 = zeros(row, col);
temp_2 = zeros(row, col);
temp_1(6,6) = 1;
for k =1:20
    for i =2:row - 1
        for j =2:col - 1
            temp = temp_1(i - 1, j - 1) + temp_1(i - 1, j ) + temp_1(i - 1, j + 1) +...
             temp_1(i, j - 1) + temp_1(i, j) + temp_1(i, j + 1) +...
             temp_1(i + 1, j - 1) + temp_1(i + 1, j) + temp_1(i + 1, j + 1); 
         if temp > 0
             temp_2(i, j) = 1;
         end
        end
    end
    temp_2;
    temp_2 = temp_2 .* data;
    if temp_1 == temp_2;
        break
    end
    temp_1 = temp_2
end