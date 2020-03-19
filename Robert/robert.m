%We first take the image and apply edge detection techniques in order to
%enhance image and then extract values

function [] = x ( ) 



%%%% EDGE Detection

clc;
close all;
clear all;
a=imread('ex.jpg');



b=im2double(a);
[m,n]=size(a);

%ROBERT%
L(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        L(i,j)=-1*b(i,j)+0+0+1*b(i+1,j+1);
    end;
end;


M(1:m,1:n)=0
for i=1:m-2;
    for j=1:m-2;
        M(i,j)=0-1*b(i,j+1)+1*b(i+1,j)+0;
    end;
end;

figure;
subplot(2,2,1)%
imshow(L)
title('Robert    Gx');
subplot(2,2,2)
imshow(M)
title('Robert    Gy');
N=M+L;
subplot(2,2,3)
imshow(N)
title('Robert    Gx+Gy');
subplot(2,2,4)
imshow(b)
title('Original Image');
