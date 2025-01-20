% Script L5E08.
clear
clc
close all
% x = (1960:10:2010)';
x = (1:6)';
y = [316.91 325.68 338.68 354.35 369.52 389.85]';
    
coef = mmqP3(x,y);
m = @(x)(coef(1) + coef(2)*x + coef(3)*x.^2  + coef(4)*x.^3);
plot(x,y,'r.','MarkerSize',40)
hold on
fplot(m,[min(x) max(x)],'LineWidth',3,'Color','b')
disp("No ano de 2020 a previsao é :  " + m(7))
