function result = computeH(x_i, theta, featureNumber)
    result = 0;
    for i = 1:featureNumber
        result = result + x_i(i)*theta(i);
    end
end