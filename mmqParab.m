function coef = mmqParab(x,y)
n = length(x);
A = [ones(n,1) x x.^2];
coef = (A'*A)\(A'*y);