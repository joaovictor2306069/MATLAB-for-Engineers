function resultado = funcaoFracRaiz(a , b)
% Importante verificar se o denominador seja diferente de 0
  if b == 0
    error('O denominador não pode ser 0');
  end

  % Calculando a raiz do numerador e denominador
  raiz_numerador = sqrt(a);
  raiz_denominador = sqrt(b);

  % Calculando a fração das raízes
  resultado = raiz_numerador / raiz_denominador;
end

%resultado1 = funcaoFracRaiz((4.17 + 5.2239)^3 - 27 , -1 + (7.25-1)*(9+11)^-0.4)