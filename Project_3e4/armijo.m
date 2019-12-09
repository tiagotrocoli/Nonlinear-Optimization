function step = armijo(fun, x, d)
% Armijo condition function
% works as long as dot(g*d) < 0
% d is a row vector
% grad is a row vector
% x is a row vector

c = 1/2;
p = 1/2;
a = 1.0;

while (fun(x + a*d) > fun(x) + c*a*(grad(fun,x)*d'))
    a = p*a;
end

step = a;