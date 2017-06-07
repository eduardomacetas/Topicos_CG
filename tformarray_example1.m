%%%%%%%%%%
% tformarray:
% EJEMPLO 1 tformarray:

I = checkerboard(20,1,1);
figure, imshow(I)
T = maketform('projective',[1 1; 41 1; 41 41;   1 41],...
                           [5 5; 40 5; 35 30; -10 30]);
R = makeresampler('cubic','circular');
J = tformarray(I,T,R,[1 2],[2 1],[100 100],[],[]);
figure, imshow(J)