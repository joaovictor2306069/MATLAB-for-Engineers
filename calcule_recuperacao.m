prova1 = input('Digite a primeira nota: ');
prova2 = input('Digite a segunda nota: ');
prova3 = input('Digite a terceira nota: ');

resultado_Media = (prova1 + prova2 + prova3)/3;
fprintf('O valor da sua média será de %.2f\n',resultado_Media);
if resultado_Media >= 6
    fprintf('Parabéns, você está aprovado\n');

else
    fprintf('Você está reprovado, estude mais!\n')
end
media_minima = 6;  
calcule_recuperacao(prova1, prova2, prova3, media_minima);
  
    media_atual = (prova1 + prova2 + prova3) / 3;
    nota_necessaria1 = (media_minima * 3) - prova2 - prova3;
    nota_necessaria2 = (media_minima * 3) - prova1 - prova3;
    nota_necessaria3 = (media_minima * 3) - prova1 - prova2;

  [nota_necessaria, prova_recuperacao] = min([nota_necessaria1, nota_necessaria2, nota_necessaria3]);

    if nota_necessaria > 10
        fprintf('Infelizmente, mesmo com recuperação não será possível alcançar a média.\n');
    else
      
        fprintf('Você precisará refazer a Prova %d e precisa de %.2f pontos para alcançar a média mínima de %.2f.\n', prova_recuperacao, nota_necessaria, media_minima);
    end

