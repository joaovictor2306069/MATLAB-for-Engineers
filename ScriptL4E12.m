clear
clc
close all

% Definição da função
f = @(x) x .* atan(x);

% Passo 1: Gráfico da função no intervalo [0,1]
fplot(f, [0, 1], 'LineWidth', 2);
title('Função f(x) = x arctg(x)');
xlabel('x');
ylabel('f(x)');
grid on;

% Passo 2: Escolha do grau do polinômio (n = 2, polinômio de grau 2)
n = 2;
X = linspace(0, 1, n + 1); % n+1 pontos no intervalo [0,1]
Y = f(X);

% Passo 3: Polinômio interpolador (usando método de Lagrange ou Newton)
% Assumindo que você já implementou a função `formaLagrange`
pL = formaLagrange(X, Y);

% Exibir o polinômio encontrado
disp("Polinômio interpolador na forma de Lagrange:");
disp(pL);

% Passo 4: Gráfico do polinômio interpolador
hold on;
fplot(pL, [0, 1], '--', 'LineWidth', 2);
legend('f(x)', 'Interpolador p(x)');
hold off;

% Passo 5: Integração do polinômio interpolador
syms x;
pL_sym = matlabFunction(pL); % Convertendo para função simbólica
P = int(pL_sym, x);          % Integral do polinômio
P1 = double(subs(P, 1));     % P(1)
P0 = double(subs(P, 0));     % P(0)
integral_pL = P1 - P0;       % Valor aproximado da integral

% Passo 6: Cálculo da integral exata
integral_exact = (pi / 4) - (1 / 2);

% Passo 7: Comparação dos valores
disp("Integral exata: ");
disp(integral_exact);

disp("Integral aproximada usando o polinômio interpolador: ");
disp(integral_pL);

% Erro absoluto
erro_abs = abs(integral_exact - integral_pL);
disp("Erro absoluto: ");
disp(erro_abs);
