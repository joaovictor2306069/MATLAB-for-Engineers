% script exercicio 9

clear
clc
close all

x = (1:10)';
y = [9.9 14.3 17.4 30.6 41.2 51.9 70.2 93.1 119.0 146.2]';

coef = mmqP3(x,y);
m = @(x)(coef(1) + coef(2)*x + coef(3)*x.^2 + coef(4)*x.^3);
plot(x,y, 'r.', 'MarkerSize',40);
hold on
fplot(m,[min(x) max(x)],'LineWidth',3,'Color','b')
disp(" No ano de 2000 a previsão da população brasileira é de : " + m(11) + " milhoes")

