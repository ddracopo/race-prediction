load('trained_net_172.065806_214.253488.mat'); 

testInd = 338:493;

% error in the testing data
y=net(dat3(:, testInd));
z = y - target3(testInd);
mse = sum((z/60).^2)/size(testInd, 2);

fprintf('MSE on test set: %f\n', mse)


%*************************************
% Penalised MSE
%*************************************

% mse = 0;
% for i = testInd
%     y = net(dat3(:, i));
    
%     if (y < target3(i))
%        % convert times in minutes
%        mse = mse + (2*(y/60.0 - target3(i)/60.0))^2;
%     else 
%       mse = mse + (y/60.0 - target3(i)/60.0)^2;
%     end
% end

% fprintf('Penalised MSE on test set: %f\n\n', mse/size(testInd, 2))

mse = 0;
y = net(dat3(:, testInd));
target=target3(testInd);

double_penalty = y < target;
mse = sum((2*(y(double_penalty)/60.0-target(double_penalty)/60.0)).^2);
mse = mse + sum((y(~double_penalty)/60.0-target(~double_penalty)/60.0).^2);

fprintf('Penalised MSE on test set: %f\n\n', mse/size(testInd, 2))


%*************************************
% MSE on the training set
%*************************************

%trainInd = 1:337;
trainInd = 1:294;
y=net(dat3(:, trainInd));
z = y - target3(trainInd);
mse = sum((z/60).^2)/size(trainInd, 2);

fprintf('MSE on training set: %f\n', mse)
