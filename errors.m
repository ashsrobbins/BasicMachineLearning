function [e] = errors(X,y,w1,w2,woo)





%L1
temp = abs(X*w1 - y);
e = sum(temp);

%L2
temp = (X*w1 - y).^2;
e = [e,sum(temp)];

%Loo
temp = abs(X*w1 - y);
e = [e,max(temp)];
%%%%%%%%%%%%%%%%
%L1
temp = abs(X*w2 - y);
f = sum(temp);

%L2
temp = (X*w2 - y).^2;
f = [f,sum(temp)];

%Loo
temp = abs(X*w2 - y);
f = [f,max(temp)];
%%%%%%%%%%%%%%%%%
%L1
temp = abs(X*woo - y);
g = sum(temp);

%L2
temp = (X*woo - y).^2;
g = [g,sum(temp)];

%Loo
temp = abs(X*woo - y);
g = [g,max(temp)];



e = [e;f;g]