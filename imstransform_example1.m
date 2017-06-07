% imstransform EXAMPLE 1:
I = imread('cameraman.tif');
%tform = maketform('affine',[1 0 0; .5 1 0; 0 0 1]);
tform = maketform('affine',[1 0 0; .9 1 0; 0 0 1]);
J = imtransform(I,tform);
figure, imshow(I), figure, imshow(J)