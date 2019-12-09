function [x_min,lambda,A] = projgradient(fun, R, b, x)

% d is a column vector
% x is a row vector

flag = true;
m = find((R*x' - b') == 0)';
A = R(m,:);

while(flag)
    I = eye(size(x,2)); % identity matrix
    d = -(I - A'*inv(A*A')*A)*grad(fun, x)';
    % if d is different to 0
    if (d'*d) > 10^(-8)
        max_a = maxOfAlpha(R,b,x,d');
        a     = armijo(fun,x,d');
        if (a > max_a) 
            a = max_a; 
        end
        x     = x + a*d';
    else
        lambda = -inv(A*A')*A*grad(fun,x)';
        [min_l, index]  = min(lambda);
        if min_l >= 0
            x_min = x;
            flag = false;
        else
           A(index,:) = []; 
        end
    end
        
    
end