clear
clc
close all

% Dados fornecidos
velocidades = [55 70 85 100 120 140]; % km/h
consumos = [14.08 13.56 13.28 12.27 11.30 10.40]; % km/l

% Velocidades médias da viagem (km/h)
trajeto_velocidades = [60, 72, 90, 100 , 80 , 56]; % km/h
trajeto_tempos = [0, 0.5, 1 , 1,5 , 2 , 2.5 , 3]; % horas (tempo gasto em cada velocidade)

% Passo 1: Criar o polinômio interpolador do consumo médio
p_consumo = formaLagrange(velocidades, consumos);

% Passo 2: Calcular o consumo em cada intervalo
consumo_total = 0; % Inicializar consumo total
for i = 1:length(trajeto_velocidades)
    v = trajeto_velocidades(i); % Velocidade média no intervalo
    t = trajeto_tempos(i);      % Tempo no intervalo
    d = v * t;                 % Distância percorrida (km)
    
    consumo_medio = double(subs(p_consumo, v)); % Consumo médio estimado (km/l)
    consumo_total = consumo_total + d / consumo_medio; % Consumo no intervalo
end

% Exibir o resultado final
disp("O consumo total estimado no trajeto é: ");
disp(consumo_total + " litros");

% Passo 3: Gráfico do consumo médio
fplot(p_consumo, [min(velocidades), max(velocidades)], 'LineWidth', 2);
hold on;
plot(velocidades, consumos, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
xlabel('Velocidade (km/h)');
ylabel('Consumo (km/l)');
title('Consumo médio em função da velocidade');
grid on;
legend('Interpolador', 'Pontos originais');
