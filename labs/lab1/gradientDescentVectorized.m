function [theta, J_history] = gradientDescentVectorized(X, y, theta, alpha, num_iters)

m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta = theta - (alpha/m) * ((X*theta - y)'*X)';
    J_history(iter) = computeCostVectorized(X, y, theta);
end

end
