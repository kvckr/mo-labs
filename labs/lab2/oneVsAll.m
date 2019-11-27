function [all_theta] = oneVsAll(X, y, num_labels, lambda)

m = size(X, 1);
n = size(X, 2);

all_theta = zeros(num_labels, n + 1);

X = [ones(m, 1) X];
alpha = 0.1;
for c = 1:num_labels
    initial_theta = zeros(n + 1, 1);
    for iter = 1:60000
    [j,grad] = costFunctionReg(initial_theta, X, (y == c), lambda);
    initial_theta = initial_theta - alpha * grad';
    end
    all_theta(c,:) = initial_theta(:);
end

end
