function coef = mmqReta(x,y)
n = length(x);
A = [ones(n,1) x];
coef = (A'*A)\(A'*y);