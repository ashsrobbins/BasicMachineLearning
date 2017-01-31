function [w1] = minL1(X, y)
[t,n] = size(X);

b = [y;-y];
A = [X,-eye(t);...
    -X,-eye(t)];
f = [zeros(n,1);ones(t,1)];

w = linprog(f,A,b);

w1 = w(1:n);