function res = grad(f,x)
    % function to calculate the gradient
    len = size(x,2);
    h = zeros(1,len);
    res = zeros(1,len);
    dx  = 10^(-4);
    for i=1:len
        h(1,i) = 10^(-4);
        res(1,i) = (f(x+h) - f(x-h))/(2*dx);
        h(1,i) = 0;
    end
end