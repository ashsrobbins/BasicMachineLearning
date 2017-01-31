function [e] = errorsPoly(X1,X3,X5,X9,y,c1,c3,c5,c9)
%e = zeros(1,4)

%L2
temp = (X1*c1 - y).^2;
e = [sum(temp)];

%L2
temp = (X3*c3 - y).^2;
e = [e,sum(temp)];

%L2
temp = (X5*c5 - y).^2;
e = [e,sum(temp)];

%L2
temp = (X9*c9 - y).^2;
e = [e,sum(temp)];


