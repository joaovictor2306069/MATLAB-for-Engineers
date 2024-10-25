function m = matrizvetor(A,B)
[m , n] = size(A);
m = zeros(m,1);
 for i = 1:m
     for j = 1:n %

         m(i) = m(i) + A(i,j)* B(j);

         % Melhorando esse codigo conforme a apostila podemos realizar de
         % forma vetorizadas, m(i) = A(i,:)* B; [nada mais é do que um produto escalar entre uma linha
         % de A e o vetor B.
         % OBS utilizando, pode excluir um for indicado como %

     end
 end

