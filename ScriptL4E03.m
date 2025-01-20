clear
clc
close all


dados = [0 0 ; 1 0.8415 ; 2 0.9093 ; 3 0.1411];
X = dados(:,1);
Y = dados(:,2);

pL = formaLagrange(X,Y);
pN = formaNewton(X,Y);
disp(pL)
disp(pN)

