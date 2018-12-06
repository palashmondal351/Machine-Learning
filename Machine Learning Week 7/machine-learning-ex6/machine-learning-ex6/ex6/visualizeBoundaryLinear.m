function visualizeBoundaryLinear(X, y, model)
%VISUALIZEBOUNDARYLINEAR plots a linear decision boundary learned by the
%SVM
%   VISUALIZEBOUNDARYLINEAR(X, y, model) plots a linear decision boundary 
%   learned by the SVM and overlays the data on it

w = model.w; % model feature weight values w=1899*1
b = model.b; % is a constant values of model is 0.2010
% calculate the max and min distance of the input values
xp = linspace(min(X(:,1)), max(X(:,1)), 100); % 100 column value

yp = - (w(1)*xp + b)/w(2);
plotData(X, y);
hold on;
plot(xp, yp, '-b'); 
hold off

end
