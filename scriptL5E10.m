clear
clc
close all

% Dados fornecidos
dados = [9 6 3;
         6 5 2;
         4 3 2;
         3 1 1;
         3 4 1;
         5 3 3;
         8 6 3;
         2 2 1;
         7 4 2;
         4 2 2];

Y = dados(:, 1);       % Vendas (variável dependente)
X = dados(:, 2:3);     % Colunas X1 (anos de experiência) e X2 (score no teste)

% Calcular os coeficientes da regressão
coef = mmqReta(X,Y);

% Exibir a equação do plano
fprintf('Equação do plano: Y = %.4f + %.4f*X1 + %.4f*X2\n', coef(1), coef(2), coef(3));

% Testar previsão para um ponto específico (exemplo: X1 = 5, X2 = 3)
X_teste = [5, 3];
Y_pred = [1, X_teste] * coef;
fprintf('Previsão para X1 = 5, X2 = 3: Y = %.4f\n', Y_pred);