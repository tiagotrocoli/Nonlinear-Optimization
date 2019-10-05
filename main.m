disp('Optimizing the function x^2 + 4*y^2 + x*y - 2x - y...');

fprintf("Armijo Condition: %f\n", armijo(@fun, [1,7], -grad(@fun, [1,7])));
fprintf("Classical Newton Method: %f %f\n", newton_method(@fun, [10090,700]));
fprintf("Gradient Method: %f %f\n", gradient_descent(@fun, [4,10]));


disp('Optimizing the function rosenbrock function...');
disp('It is a non-convex function, so Newton Method does not work.');

fprintf("Armijo Condition: %f\n", armijo(@rosenbrock, [1,7], -grad(@fun, [1,7])));
fprintf("Gradient Method: %f %f\n", gradient_descent(@fun, [4,10]));
