% Script L5E03.

clear
clc
close all

x = [1 2 3 4 5 6 7 8]';
y = [0.5 0.6 0.9 0.8 1.2 1.5 1.7 2]';


coef = mmqParab(x,y);

m = @(x)(coef(1) + coef(2)*x + coef(3)*x.^2);
disp("Coeficientes do polinômio ajustado:");
disp("c0 = " + coef(1));
disp("c1 = " + coef(2));
disp("c2 = " + coef(3));

plot(x,y,'r.','MarkerSize',40)
hold on
fplot(m,[min(x) max(x)],'LineWidth',3,'Color','b')