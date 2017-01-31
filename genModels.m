function [X,y,w1,w2,woo] = genModels(i, t)

n = 2; % dimension
t; % training size
u = [0; ones(n-1,1)]; % target weights
sigma = 0.1; % noise level
X = [ones(t,1) rand(t, n-1)]; % training pattern

switch i
    case 1
        y = X*u + randn(t,1)* sigma;
        
        w1 = minL1(X,y);
        w2 = minL2(X,y);
        woo = minLoo(X,y);
        
        clf
        plot(X(:,2), y, 'k*')
        hold
        plot([0 1], [w2(1) sum(w2)], 'r-')
        plot([0 1], [w1(1) sum(w1)], 'g-')
        plot([0 1], [woo(1) sum(woo)], 'b-')
        print -deps experiment.1.1.1.ps
     
    case 2
        y = X*u + randn(t,1)./randn(t,1)*sigma;
        
        w1 = minL1(X,y);
        w2 = minL2(X,y);
        woo = minLoo(X,y);
        
        clf
        plot(X(:,2), y, 'k*')
        hold
        plot([0 1], [w2(1) sum(w2)], 'r-')
        plot([0 1], [w1(1) sum(w1)], 'g-')
        plot([0 1], [woo(1) sum(woo)], 'b-')
        print -deps experiment.1.1.2.ps
        
    case 3
       
        y = X*u + randn(t,1) .* randn(t,1)*sigma;

        w1 = minL1(X,y);
        w2 = minL2(X,y);
        woo = minLoo(X,y);
        
        clf
        plot(X(:,2), y, 'k*')
        hold
        plot([0 1], [w2(1) sum(w2)], 'r-')
        plot([0 1], [w1(1) sum(w1)], 'g-')
        plot([0 1], [woo(1) sum(woo)], 'b-')
        print -deps experiment.1.1.3.ps
        
    otherwise
        ;
end

