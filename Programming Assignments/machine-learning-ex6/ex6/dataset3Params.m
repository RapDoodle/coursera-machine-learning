function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

##best_prediction_error = 0;
##best_C = 0;
##best_sigma = 0;
##
##% DEBUG ONLY
##% row = 1;
##% debug_info = zeros(64, 3)
##
##for sigma = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
##  
##    for C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
##      
##        model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
##        predictions = svmPredict(model, Xval);
##        prediction_error = mean(double(predictions ~= yval));
##        
##        % DEBUG ONLY
##        % debug_info(row, :) = [C sigma prediction_error];
##        % row = row + 1;
##        
##        if (prediction_error < best_prediction_error | best_prediction_error == 0)
##            
##            best_C = C;
##            best_sigma = sigma;
##            best_prediction_error = prediction_error;
##            
##        endif
##      
##    endfor
##    
##endfor
##
##C = best_C;
##sigma = best_sigma;

% =========================================================================

end
