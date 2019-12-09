function matrix = hessian(fun, x)
    % function to calculate the hessian matrix
    len = size(x,2);
    h = zeros(1,len);
    matrix = zeros(len, len);
    dx  = 10^(-4);
    
    for i=1:len
        h(1,i)      = 1.0;
        f1          = fun(x+2*dx*h);
        f2          = fun(x-2*dx*h);
        matrix(i,i) = (f1 -2*fun(x) + f2)/(4*dx*dx);
        h(1,i)      = 0;
    end
    
    for i=1:len
        h(1,i) = 1.0;
        for j=i+1:len
            h(1,j) = 1.0;
            f1     = fun(x+dx*h);
            f4     = fun(x-dx*h);
            h(1,j) = -1;
            f3     = fun(x+dx*h);
            f2     = fun(x-dx*h); 
            matrix(i,j) = ((f1 - f2) - (f3 - f4))/(4*dx*dx);
            matrix(j,i) = matrix(1,j); 
            h(i,j) = 0;
        end
        h(1,i) = 0;
    end