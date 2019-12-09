function res = cfun(x)
    res = (2*x(1)+x(2)+x(3)+4*x(4)-7)^2;
    res = res + (x(1)+x(2)+2*x(3)+x(4)-6)^2;
    res = res + max(-x(1),0) + max(-x(2),0) + max(-x(3),0) + max(-x(4),0);