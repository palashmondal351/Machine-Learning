function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
% taking num_iters gradient steps with learning rate alpha
m = length(y);
J_history = zeros(num_iters, 1); % num_iters =1500

for iter = 1:num_iters
    
    delta1 = 1/m.*sum(X*theta - y);
    delta2 = 1/m.*sum((X*theta - y)'*X);
    temp1 = theta(1,1) - alpha.*delta1;
    temp2 = theta(2,1) - alpha.*delta2;
    theta(1,1) = temp1
    theta(2,1) = temp2
    
    % here the theta value is the gradient descent value

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);    
end
J_history;
end
