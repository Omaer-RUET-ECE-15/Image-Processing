clc
clear all
close all
img_1=imread('images.jpg');
subplot(221)
imshow(img_1);
img_2=rgb2gray(img_1);
subplot(222)
imshow(img_2);
[h,w,d]=size(img_2);
img_3=img_2;
for i=2:h-1
   for j=2:w-1
       temp=img_2(i-1,j-1)+img_2(i,j-1)+img_2(i+1,j-1)+img_2(i-1,j)-8*img_2(i,j)+img_2(i+1,j)+img_2(i-1,j+1)+img_2(i,j+1)+img_2(i+1,j+1);
       if(temp<0)
           img_3(i,j)=0;
       elseif(temp>255)
           img_3(i,j)=255;
       else
           img_3(i,j)=temp;
       end
   end
end
subplot(223)
imshow(img_3);
img_4=img_1;
for i=2:h-1
   for j=2:w-1
       for k=1:3
          temp=img_1(i-1,j-1,k)+img_1(i,j-1,k)+img_1(i+1,j-1,k)+img_1(i-1,j,k)-8*img_1(i,j,k)+img_1(i+1,j,k)+img_1(i-1,j+1,k)+img_1(i,j+1,k)+img_1(i+1,j+1,k);
          if(temp<0)
              img_4(i,j,k)=0;
           elseif(temp>255)
               img_4(i,j,k)=255;
           else
               img_4(i,j,k)=temp;
       end
       end
   end
end
subplot(224)
imshow(img_4);

