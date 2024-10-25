clear
clc

for n = 1:999
    i = 1:2:(2*n -1);
    somaI= sum(i);

    if somaI == n^2
        fprintf('Para n = %d, a propriedade foi verificada. Soma = %d, n^2 = %d \n ', n, somaI, n^2);
    else
        fprintf('Para n = %d, a propriedade NÃO foi verificada. Soma = %d, n^2 = %d \n ', n, somaI, n^2);
    end
end


