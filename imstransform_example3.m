% imstransform EXAMPLE 3:
unregistered = imread('westconcordaerial.png');
figure, imshow(unregistered)
figure, imshow('westconcordorthophoto.png')
load westconcordpoints % load some points that were already picked     
t_concord = cp2tform(input_points,base_points,'projective');
info = imfinfo('westconcordorthophoto.png');
registered = imtransform(unregistered,t_concord,...
                         'XData',[1 info.Width], 'YData',[1 info.Height]);
figure, imshow(registered)
