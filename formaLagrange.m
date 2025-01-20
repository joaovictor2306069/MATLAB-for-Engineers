function p = formaLagrange(X,Y)
syms x p(x)
p(x) = 0;
m = length(X); % m eh o numero de pontos.
for k = 1:m
    L = 1;
    for j = 1:m
        if j ~= k
            L = L*(x - X(j))/(X(k) - X(j));
        end
    end
    p = p + Y(k)*L;
end
p = simplify(p);