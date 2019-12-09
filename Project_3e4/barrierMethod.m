function res = barrierMethod(obj, const, x)

% obj = objective function
% const = constraints functions
e = 10^(-2);
c = 10;
b = 5;
while c*const(x) >= e
    f = @(x) obj(x) + c*const(x);
    x = gradient_descent(f, x);
    c = b*c;
end
res = x;
