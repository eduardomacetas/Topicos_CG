% imstransform EXAMPLE 2:
I = imread('cameraman.tif');
udata = [0 1];  vdata = [0 1];  % input coordinate system
tform = maketform('projective',[ 0 0;  1  0;  1  1; 0 1],...
                               [-4 2; -8 -3; -3 -5; 6 3]);
[B,xdata,ydata] = imtransform(I,tform,'bicubic','udata',udata,...
                                                'vdata',vdata,...
                                                'size',size(I),...
                                                'fill',128);
imshow(I,'XData',udata,'YData',vdata), axis on
figure, imshow(B,'XData',xdata,'YData',ydata), axis on