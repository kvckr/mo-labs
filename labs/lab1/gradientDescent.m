function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
m = length(y);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

featureNumber = size(X,2);
theta_temp = zeros(featureNumber,1);

for i = 1:featureNumber
    sumResult = 0;
    for j = 1:m
        sumResult = sumResult + (computeH(X(j,:), theta, featureNumber) - y(j)) * X(j,i);
    end
    theta_temp(i) = theta(i) - (alpha/m)*sumResult;
end

theta = theta_temp;
  
J_history(iter) = computeCost(X, y, theta);

end

end
