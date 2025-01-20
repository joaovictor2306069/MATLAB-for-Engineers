% Script L4E21 2 vez

clear
clc
close all

velocidade = [ 55, 70, 85, 100, 120, 140 ]';
consumo = [14.08, 13.56, 13.28, 12.28, 11.30, 10.40]';

velo_trajeto = [ 60, 72,90, 100, 80, 56]';
tempo = [ 0, 0.5 ,1 ,1.5 ,2 ,2.5, 3 ];

p = formaLagrange(velocidade,consumo);

modelo_consumo = @(v) double(subs(p,v));

consumo_trajeto = arrayfun(modelo_consumo, velo_trajeto);

distancia = velo_trajeto .* tempo ;

consumo_total = sum(distancia)/ sum(distancia ./ consumo_trajeto);
disp("O consumo total no trajeto :")
disp(consumo_total)