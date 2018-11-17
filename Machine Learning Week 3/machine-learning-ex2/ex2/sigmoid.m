function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
g=1./(1+exp(-z)); % Remember: exp(0)=0, and i took the z value as a scaler
                  % where the values of z is come form logistic regression
                  % can be represent as h(x)=g(theta'*X)

% =============================================================

end
