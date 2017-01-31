function [etrain, etest] = hundredAveragePoly(model)

etrain = zeros(1,4);
etest = zeros(1,4);
for k = 1:100
   [X1,X3,X5,X9,y,c1,c3,c5,c9] = genPolyModels(model, 10);
   etrain = etrain + errorsPoly(X1,X3,X5,X9,y,c1,c3,c5,c9)
   [X1,X3,X5,X9,y] = genPolyModels(model, 1000);
   etest = etest + errorsPoly(X1,X3,X5,X9,y,c1,c3,c5,c9)
   etrain
   etest
   k
    
end

etrain = etrain./100;

etest= etest./100;