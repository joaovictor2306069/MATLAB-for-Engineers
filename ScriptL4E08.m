% Script L4E08.
clear
clc
close all
dados = [200 1.075
         220 1.102
         240 1.136
         260 1.183
         280 1.250];
X = dados(:,1);
Y = dados(:,2);
pL = formaLagrange(X,Y);
disp("O calor especifico a 250oC eh " + double(pL(250)))