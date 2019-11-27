function p = predictReg(theta, X1, X2, degree)
mappedFeatures = mapFeature(X1, X2, degree);
p = sigmoid(mappedFeatures * theta) >= 0.5;

end
