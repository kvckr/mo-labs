function [theta] = leastSquares(X, y)

theta = pinv(X'*X)*X'*y;

end
