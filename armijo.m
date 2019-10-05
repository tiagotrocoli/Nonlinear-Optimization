function step = armijo(fun, x, d)
% Armijo condition function
% works as long as dot(g*d) < 0

c = 1/2;
p = 1/2;
a = 1.0;
g = grad(fun, x);

while (fun(x + a*d) > fun(x) + c*a*dot(g,d))
    a = p*a;
end

step = a;