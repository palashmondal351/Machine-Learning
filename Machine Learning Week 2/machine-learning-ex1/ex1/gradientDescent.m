function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
% taking num_iters gradient steps with learning rate alpha
m = length(y);
J_history = zeros(num_iters, 1); % num_iters =1500

for iter = 1:num_iters
    
	delta=1/m*((X*theta-y)'*X); % derivative of cost function J
	theta=theta-alpha.*delta'; % delta is 1*2 matrix
    % here the theta value is the gradient descent value

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);    
end
J_history;
end
