function coef = mmqP3(x,y)
n = length(x);
A = [ones(n,1) x x.^2 x.^3];
coef = (A'*A)\(A'*y);