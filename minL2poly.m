function [c, X] = minL2poly(x,y,d)
X = ones(size(x))
for p= 1:d
    X = [x.^p,X]
end

c = minL2(X,y)