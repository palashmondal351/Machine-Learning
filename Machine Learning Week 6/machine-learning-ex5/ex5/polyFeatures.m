function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];

% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
m = size(X, 1);

for i=1:m % polynomial feature for each input instant
    
    poly_feature = zeros(p, 1); % polynomial feature upto 8 degree
    
    for j = 1:p % for loop for polynomial feature for each instant 
                % upto 8 degree
       poly_feature(j) = X(i).^(j);     
    end
    X_poly(i,:) = poly_feature; % total input polynomial feature matrix
end                             % of 12* 8

% =========================================================================
end
