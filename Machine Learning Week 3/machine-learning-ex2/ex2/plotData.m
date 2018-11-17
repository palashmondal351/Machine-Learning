function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% use ex2data2 when you are running ex2_reg.m
% data = load('ex2data2.txt');
% use ex2data1 when you are running ex2.m 
 data = load('ex2data1.txt');
X = data(:, [1, 2]); y = data(:, 3);
% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
% indices of x from column 1 & 2 for y=1  
% here k+ mark sharp of the face icon
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
hold on
% indices of x from column 1 & 2 for y=0 
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

% =========================================================================
hold off;
end
