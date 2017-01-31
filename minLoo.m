function [woo] = minLoo(X, y)
[t,n] = size(X)

b = [y;-y];
A = [X,-ones(t,1);...
    -X,-ones(t,1)];
f = [zeros(n,1);1];

w = linprog(f,A,b);

woo = w(1:n);