function min = opt_gradient_descent(fun, x)


Q = hessian(fun, x);
d = grad(fun,x);
e = 10^(-5);

while norm(d) >= e
    
    % a is the optimial step
    a = (dot(d,d))/(d*Q*(d.'));
    x = x - a*d;
    d = grad(fun,x);
    
    
end

min = x;