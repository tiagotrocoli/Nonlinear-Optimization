%% Optimizing $x_1^2 + 4x_2^2 x_1x_2 - 2x_1 - x_2$ 

fprintf("Armijo Condition: %f\n", armijo(@fun, [1,7], -grad(@fun, [1,7])));
fprintf("Classical Newton Method: %f %f\n", newton_method(@fun, [10090,700]));
fprintf("Gradient Method: %f %f\n", gradient_descent(@fun, [4,10]));

disp('Optimizing the function rosenbrock function...');
disp('It is a non-convex function, so Newton Method does not work.');

%% Optimizing Rosebrock function
% Rosenbrock function: $f(x,y) = 100(x_2 - x_1^2)^2 + (1-x_1)^2$
% It is a non-convex function, so Classical Newton Method cannot solve.

fprintf("Armijo Condition: %f\n", armijo(@rosenbrock, [1,7], -grad(@fun, [1,7])));
fprintf("Gradient Method: %f %f\n", gradient_descent(@fun, [4,10]));
