close all
I = imread('rostro.png');
J = imresize(I,10,'nearest');
K = imresize(I,10,'bilinear');
L = imresize(I,10,'bicubic');
figure, imshow(I), figure, imshow(J), figure, imshow(K), figure , imshow(L)

%h = fspecial('average',9);
%res = 