function m = media_for(notas)
    soma = 0;  % Inicializa a soma
    for i = 1:length(notas)
        soma = soma + notas(i);  % Adiciona cada nota à soma
    end
    m = soma / length(notas);  % Divide a soma pelo número de notas
end
