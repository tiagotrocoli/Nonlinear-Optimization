function res = rosenbrock(x)
    res = 100*(x(2) - x(1)^2)^2 + (1-x(1))^2;