clear;
clc;
close all;

% Dados fornecidos
anos = [1960, 1970, 1980, 1990, 2000]';
consumo = [136.43, 202.70, 322.90, 411.20, 494.10]';

% Regressão exponencial: y = a + b*exp(c*x)
% Transformação do modelo para regressão linear: ln(y - a) = ln(b) + c*x

% Aproximação inicial de a
a = min(consumo) - 10; % Valor inicial de a (pode ser ajustado)

% Transformar y para ln(y - a)
z = consumo - a;
ln_z = log(z);

% Regressão linear para ln_z = ln(b) + c*x
X = [ones(size(anos)), anos]; % Matriz de regressão (intercepto e x)
coef = X \ ln_z; % Resolve o sistema normal para regressão linear

ln_b = coef(1);
c = coef(2);
b = exp(ln_b);

% Função ajustada
f_exp = @(x) a + b * exp(c * x);

% Estimativa para o ano 2010
ano_pred = 2010;
consumo_pred = f_exp(ano_pred);

% Resultados
disp("Parâmetros ajustados:");
disp("a = " + a);
disp("b = " + b);
disp("c = " + c);
disp("Previsão para 2010: " + consumo_pred + " bilhões de galões por dia");

% Gráfico
fplot(f_exp, [1960, 2010], 'b-', 'LineWidth', 2); % Curva ajustada
hold on;
plot(anos, consumo, 'ro', 'MarkerSize', 10, 'LineWidth', 2); % Dados originais
xlabel('Ano');
ylabel('Consumo (bilhões de galões por dia)');
title('Regressão Exponencial para Consumo de Água');
legend('Modelo Ajustado', 'Dados Originais', 'Location', 'NorthWest');
grid on;
