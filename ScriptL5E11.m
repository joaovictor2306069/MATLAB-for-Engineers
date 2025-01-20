clear 
clc
close all

dados = [ 1 0.843; 2 0.753 ; 3  0.580; 4 0.520; 5 0.452 ; 6 0.414];
x = dados(:,1);
y = dados(:,2);

coef = mmqReta(x,y);
m = @(x)( coef(1) + coef(2)*x + coef(3)*x.^2 + coef(4)*x.^3);
m = @(x) m(x) - 0.3; % Função para encontrar a raiz
x0 = 6; % Chute inicial (baseado no intervalo esperado)
x_sol = fzero(m, x0); % Encontrar a raiz

% Exibir o resultado
disp("O valor de anos que ficará abaixo de 0.3 é aproximadamente: " + x_sol);
%disp("O valor de anos que ficará abaixo de 0.3 é : " + m(0.3))
