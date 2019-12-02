function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

m = length(y);
J = 0;
grad = zeros(size(theta));
m = length(y);
h_theta = X * theta;
J = 1/(2*m) * (h_theta - y)' * (h_theta - y) + ...
    (lambda/(2*m)) * (theta(2:length(theta)))' * theta(2:length(theta));
thetaZero = theta;
thetaZero(1) = 0;
grad = ((1 / m) * (h_theta - y)' * X) + ...
    lambda / m * thetaZero';
grad = grad(:);

end
