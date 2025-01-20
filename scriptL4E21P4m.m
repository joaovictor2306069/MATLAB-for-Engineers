% Script L4E21 Parte 3

clear 
clc
close all

velocidade = [55 , 70 , 85, 100, 120, 140 ]';
consumo = [ 14.08 , 13.56 , 13.28 , 12.27 , 11.30 , 10.40  ]';


vel_trajeto = [ 60 , 72 , 90 , 100 , 80 , 56]';
tempo = [ 0.5 , 1 , 1.5 , 2 , 2.5 , 3 ];

p = formaLagrange(velocidade, consumo);

consumo_modelo = @(v) double(subs(p,v));

consumo_trajeto = arrayfun(consumo_modelo , vel_trajeto);

distancia = vel_trajeto .* tempo;

consumo_total = sum(distancia) / sum(distancia ./ consumo_trajeto);

disp(" O consumo total estimago foi de " + consumo_total + "Km/L")