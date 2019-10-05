function min=newton_method(fun, x)
% Classic Newton Method
e = 10^(-5);

while norm(grad(fun, x)) >= e
    x = x - transpose((inv(hessian(fun, x))*(transpose(grad(fun, x)))));
end

min = x;