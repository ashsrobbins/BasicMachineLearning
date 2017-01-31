function [etrain, etest] = hundredAverage(model)

etrain = zeros(3,3);
etest = zeros(3,3);
for k = 1:100
   [X,y,w1,w2,woo] = genModels(model, 10);
   etrain = etrain + errors(X,y,w1,w2,woo);
   [X,y] = genModels(model, 1000);
   etest = etest + errors(X,y,w1,w2,woo);
   
   etrain
   etest
   
   k
    
end

etrain = etrain./100;

etest= etest./100;