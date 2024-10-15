% Passo 1: Criar um vetor θ com valores de 0 a 2π
theta = linspace(0, 2*pi, 100);  % 100 pontos entre 0 e 2π

% Passo 2: Calcular sen²(θ) e cos²(θ)
sen2_theta = sin(theta).^2;  % Calcula sen²(θ)
cos2_theta = cos(theta).^2;   % Calcula cos²(θ)

% Passo 3: Verificar a identidade sen(θ) + cos²(θ) - 1 = 0
identidade = sen2_theta + cos2_theta - 1;  % Calcula sen²(θ) + cos²(θ) - 1

% Exibir resultados
disp('Identidade trigonométrica para diferentes valores de θ:');
disp(identidade);  % Exibe os resultados da identidade

% Verificar se todos os valores estão próximos de 0
if all(abs(identidade) < 1e-10)  % Tolerância para checar se é zero
    disp('A identidade trigonométrica é válida para todos os ângulos.');
else
    disp('A identidade trigonométrica não é válida para alguns ângulos.');
end

