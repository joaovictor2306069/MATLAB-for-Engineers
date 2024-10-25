% script L02E04
clear 
clc


f = @(x)(x.^2 + - 6);
a = 0;
b = 3;
TOL = 1e-4;
kmax = 100;

[k ,x] = metBis(f,a,b,TOL,kmax);
fprintf('Aprox: %.4f \n ', x);
disp("Iter:" + k)
