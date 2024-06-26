%% self-assigning feature weights and residual evolution (SAFWRE)
clear 
close all
clc
warning off
%% Read data
data=xlsread("data.xlsx");
input0=data(:,2:end);                     % Training characteristics (independent variable)
output=data(:,1);                         % Output variable (dependent variable)
Num=length(output);                       % Calculate sample size

%% Splitting datasets
c = cvpartition(output,"HoldOut",0.2);    % Dataset splitting ratio setting (adjustable values)
trainingIndices = training(c);            % Training set index
testIndices = test(c);                    % Test Set Index
XTrain = input0(trainingIndices,:);       % Training Set Training Features (Independent Variable)
YTrain = output(trainingIndices);         % Training Set-Output Variable (Dependent Variable)
D_train=[YTrain XTrain];
Num_trian=length(YTrain);                 % Obtain the sample size of the training set
XTest = input0(testIndices,:);            % Test Set Training Features (Independent Variable)
YTest = output(testIndices);              % Test Set-Output Variable (Dependent Variable)

%% CSA function call
dim = 20;                                 % Maintain consistency in the number of features
ub = zeros(1,20);                         % Independent variable from previous year
lb = ones(1, 20);                         % The next independent variable
fobj = @(x)Objfun(x,XTrain,YTrain);       % objective function 
maxIter = 100;                             % The larger the number of iterations, the more accurate it becomes
noP = 30;                                 % Population size
[bestFitness, bestPosition, CSAConvCurve] =CSA(noP,maxIter,lb,ub,dim,fobj);   % CSA function call
