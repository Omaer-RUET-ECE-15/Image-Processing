%Md. Omaer Faruq Goni
%ECE - 15
%RUET
clc;
clear all;
close all;
data = zeros(100, 100);
yc = 50;
xc = 50;
r = 20;
x = 0;
y = r;
d = 3 - 2 * r;
data(xc, yc) = 1;

data(xc + x, yc + y) = 1;
data(xc - x, yc + y) = 1;
data(xc - x, yc - y) = 1;
data(xc + x, yc - y) = 1;

data(xc + y, yc + x) = 1;
data(xc - y, yc + x) = 1;
data(xc - y, yc - x) = 1;
data(xc + y, yc - x) = 1;

while y >= x
    x = x + 1;
    if d > 0
        y = y - 1;
        d = d + 4 * (x - y) + 10;
    else
        d = d + 4 * x + 6;
    end
    data(xc + x, yc + y) = 1;
    data(xc - x, yc + y) = 1;
    data(xc - x, yc - y) = 1;
    data(xc + x, yc - y) = 1;

    data(xc + y, yc + x) = 1;
    data(xc - y, yc + x) = 1;
    data(xc - y, yc - x) = 1;
    data(xc + y, yc - x) = 1;
end
imshow(data)