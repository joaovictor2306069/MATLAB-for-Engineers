function p = formaNewton(X,Y)
m = length(X);
T = zeros(m);
T(:,1) = Y;
for j = 2:m
    for i = 1:(m-j+1)
        T(i,j) = (T(i+1,j-1) - T(i,j-1))/(X(i+j-1) - X(i));
    end
end
% disp(T)
syms x p(x)
p(x) = 0;
produto = 1;
for j = 1:m
    p = p + T(1,j)*produto;
    produto = produto*(x - X(j));
end
 p = simplify(p);