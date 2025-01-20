clear;
clc;
close all;

% Dados fornecidos de velocidade e consumo
velocidade = [55, 70, 85, 100, 120, 140]'; 
consumo = [14.08, 13.56, 13.28, 12.27, 11.30, 10.40]';

% Dados adicionais: velocidades médias e tempo de viagem em cada trecho
vel_trajeto = [60, 72, 90, 100, 80, 56]'; % Velocidades médias durante o trajeto
tempo = [0.5, 1, 1.5, 2, 2.5, 3]'; % Tempo gasto em horas em cada intervalo

% Interpolação usando sua função
pL = formaLagrange(velocidade, consumo); % Polinômio interpolador
consumo_modelo = @(v) double(subs(pL, v)); % Avaliar o polinômio

% Calcular o consumo estimado em cada velocidade registrada no trajeto
consumo_trajeto = arrayfun(consumo_modelo, vel_trajeto);

% Calcular a distância percorrida em cada intervalo e o consumo total
distancia = vel_trajeto .* tempo; % Distância percorrida (km) em cada intervalo
consumo_total = sum(distancia) / sum(distancia ./ consumo_trajeto); % Consumo médio ponderado

% Resultados
disp("Consumo total estimado no trajeto: " + consumo_total + " km/l");

% Gráfico
fplot(consumo_modelo, [min(velocidade), max(velocidade)], 'b-', 'LineWidth', 2);
hold on;
plot(velocidade, consumo, 'ro', 'MarkerSize', 10, 'LineWidth', 2); % Dados originais
plot(vel_trajeto, consumo_trajeto, 'gx', 'MarkerSize', 10, 'LineWidth', 2); % Estimativas no trajeto
xlabel('Velocidade (km/h)');
ylabel('Consumo (km/l)');
title('Estimativa de Consumo de Combustível no Trajeto');
legend('Modelo Ajustado', 'Dados Originais', 'Estimativas no Trajeto', 'Location', 'NorthEast');
grid on;
