function min_a = maxOfAlpha(R,b,x,d)

if abs(R(1,:)*d') > 10^(-8)
    a1 = (b(1) - R(1,:)*x')/(R(1,:)*d');
else
    a1 = (b(1) - R(1,:)*x');
end
if abs(R(2,:)*d') > 10^(-8)
    a2 = (b(2) - R(2,:)*x')/(R(2,:)*d');
else
    a2 = (b(2) - R(2,:)*x');
end
if abs(R(3,:)*d') > 10^(-8)
    a3 = (b(3) - R(3,:)*x')/(R(3,:)*d');
else
    a3 = (b(3) - R(3,:)*x');
end
if abs(R(4,:)*d') > 10^(-8)
    a4 = (b(4) - R(4,:)*x')/(R(4,:)*d');
else
    a4 = (b(4) - R(4,:)*x');
end
if abs(R(5,:)*d') > 10^(-8)
    a5 = (b(5) - R(5,:)*x')/(R(5,:)*d');
else
    a5 = (b(5) - R(5,:)*x');
end
if abs(R(6,:)*d') > 10^(-8)
    a6 = (b(6) - R(6,:)*x')/(R(6,:)*d');
else
    a6 = (b(6) - R(6,:)*x');
end
min_a = max(a1, a2);
min_a = max(min_a, a3);
min_a = max(min_a, a4);
min_a = max(min_a, a5);
min_a = max(min_a, a6);