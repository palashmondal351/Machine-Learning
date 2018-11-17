function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values

m = length(y); % number of training examples
J=0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h=X*theta; % h value will be 0 of a m*1 matrix, because theta=zeros(2,1)
sqrErrors=(h-y).^2;
J=1/(2*m)*sum(sqrErrors); % j=32.0727
% =========================================================================

end
