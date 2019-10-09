function step = armijo(fun, x)
% Armijo condition function
% works as long as dot(g*d) < 0

c = 1/2;
p = 1/2;
a = 1.0;
d = -grad(fun, x);

while (fun(x + a*d) > fun(x) - c*a*dot(d,d))
    a = p*a;
end

step = a;