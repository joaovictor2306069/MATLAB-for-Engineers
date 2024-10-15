% Script principal
prova1 = input('Digite a primeira nota: ');
prova2 = input('Digite a segunda nota: ');
prova3 = input('Digite a terceira nota: ');

% Calcular a média das provas
resultado_Media = (prova1 + prova2 + prova3) / 3;
fprintf('O valor da sua média será de %.2f\n', resultado_Media);

% Verificar se o aluno está aprovado ou precisará de recuperação
if resultado_Media >= 6
    fprintf('Parabéns, você está aprovado!\n');
else
    fprintf('Você está reprovado. Vamos calcular a nota necessária para a recuperação.\n');
    
    % Chama a função para calcular a recuperação
    media_minima = 6;  % Média necessária para passar
    calcule_recuperacao(prova1, prova2, prova3, media_minima);
end
