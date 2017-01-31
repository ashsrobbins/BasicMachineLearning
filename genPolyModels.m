function [X1,X3,X5,X9,y,c1,c3,c5,c9] = genPolyModels(i,t)
 % training size
sigma = 0.1; % noise level
x = rand(t, 1); % training patterns




switch i
    case 1
        y = double(x > 0.5); % step function

        [c1,X1] = minL2poly(x,y,1);
        [c3,X3]= minL2poly(x,y,3);
        [c5,X5] = minL2poly(x,y,5);
        [c9,X9] = minL2poly(x,y,9);
        
        clf
        axis([0 1 -0.5 1.5])
        hold
        plot(x', y', 'k*')
        xx = (0:1000)/1000
        yy = double(xx > 0.5)
        plot(xx, yy, 'k:')
        plot(xx, polyval(c1, xx), 'r-')
        plot(xx, polyval(c3, xx), 'g-')
        plot(xx, polyval(c5, xx), 'b-')
        plot(xx, polyval(c9, xx), 'm-')
        print -deps experiment.1.2.1.ps
     
    case 2
        y = 0.5 - 10.4*x.*(x-0.5).*(x-1)+sigma*randn(t, 1) % noisy cubic
        
        [c1,X1] = minL2poly(x,y,1);
        [c3,X3]= minL2poly(x,y,3);
        [c5,X5] = minL2poly(x,y,5);
        [c9,X9] = minL2poly(x,y,9);
        
        clf
        axis([0 1 -0.5 1.5])
        hold
        plot(x', y', 'k*')
        xx = (0:1000)/1000
        yy = 0.5 - 10.4.*xx.*(xx-0.5).*(xx-1)
        plot(xx, yy, 'k:')
        plot(xx, polyval(c1, xx), 'r-')
        plot(xx, polyval(c3, xx), 'g-')
        plot(xx, polyval(c5, xx), 'b-')
        plot(xx, polyval(c9, xx), 'm-')
        print -deps experiment.1.2.2.ps
    otherwise
        ;
end

