clear
clc
close all


f = @(x) 4*cos(x) - exp(x);

X = [0, 0.5, 1]; 
Y = f(X);      


pL = formaLagrange(X, Y);

disp("O polinômio interpolador é:");
disp(pL);

syms x
raizes = double(solve(pL == 0, x));

raiz_aproximada = raizes(raizes >= 0 & raizes <= 1);

disp("A raiz aproximada no intervalo [0,1] é:");
disp(raiz_aproximada);

