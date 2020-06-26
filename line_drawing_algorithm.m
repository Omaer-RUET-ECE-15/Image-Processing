%Md. Omaer Faruq Goni
%ECE - 15
%RUET
clc;
clear all;
close all;
%m <= 1
x0 = 2;
x1 = 12;
y0 = 3;
y1 = 8;
data = zeros(20, 20);

data(x0, y0) = 1;
dx = x1 - x0;
dy = y1 - y0;
p = 2 * dy - dx;
for i = 1:dx
    if p < 0
        x0 = x0 + 1;
        data(x0, y0) = 1;
        p = p + 2 * dy;
    else
         x0 = x0 + 1;
         y0 = y0 + 1;
        data(x0, y0) = 1;
        p = p + 2 * dy - 2 *dx;
    end
end
imshow(data)
data