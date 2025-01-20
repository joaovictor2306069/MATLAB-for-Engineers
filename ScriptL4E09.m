clear
clc
close all

Dados = [0 1 ; pi/6 sqrt(3/2) ; pi/3 1/2 ; pi/2 0]';

X = Dados(1, :);
Y = Dados(2, :);

% X = [0 pi/6 pi/3 pi/2]';
% f = @(X)(cos(X));
% Y = [1 sqrt(3/2) 1/2 0]';

p = formaNewton(X,Y);

disp("cos(pi/4) eh aprox. " + double(p(pi/4)))

