function J = computeCost(X, y, theta)
m = length(y);
J = 0;

featureNumber = size(X,2);

sum = 0;
for i = 1:m
    sum = sum + (computeH(X(i,:), theta, featureNumber)-y(i))^2;
end

J = sum/(2*m);

end