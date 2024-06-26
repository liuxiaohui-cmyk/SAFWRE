function   classLoss=Objfun(x,XTrain,YTrain)
XTrain=XTrain.*x;                               % Feature weighting
if isempty(XTrain)
    erro=1;
else
    trainingData=[XTrain,YTrain];
    [trainedClassifier, ~] = trainlm(trainingData);
    [~,score] = trainedClassifier.predictFcn(XTrain);
    YTrain2=YTrain-score(:,1);
    SVMModel = fitcsvm(XTrain,YTrain2,'Standardize',true,'KernelFunction','RBF',...
        'KernelScale','auto');                  % Training SVM classifiers with radial basis kernels
    CVSVMModel = crossval(SVMModel,'KFold',5);  % Cross validation of 5-fold SVM classifier
    classLoss = kfoldLoss(CVSVMModel);          % Calculate cross validation error
end