function min = gradient_descent(fun, x)
% Classical Gradient Descent
d = -grad(fun,x);
e = 10^(-5);

while norm(d) >= e
    
    % a is a "good" step
    a = armijo(fun, x,d);
    x = x + a*d;
    d = -grad(fun,x);
    
end

min = x;