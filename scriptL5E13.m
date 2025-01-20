clear;
clc;
close all;

dados = [1960 136.43; 1970 202.70; 1980 322.90; 1990 411.20; 2000 494.10];

X = dados(:,1); 
Y = dados(:,2); 


coef = mmqReta(X, Y);  


m = @(x)(coef(1) + coef(2)*x);  % modelo linear: y = a + b*x
% para parabola usar 3 coef

disp("Para o ano de 2010, o consumo de água terá uma estimativa de " + m(2010) + " litros de água.");

% Gráfico
plot(X, Y, 'ro', 'MarkerSize', 10, 'LineWidth', 2); % Dados originais
hold on;
fplot(m, [min(X), 2010], 'b-', 'LineWidth', 2); % Curva ajustada
set(gca, 'FontSize', 12);
xlabel('Ano');
ylabel('Consumo de água (litros)');
title('Estimativa de consumo de água - Modelo Linear');
grid on;
