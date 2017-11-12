% Init variables
% imgsTrainingFileName = './train-images.idx3-ubyte';
% labelsTrainingFileName = './train-labels.idx1-ubyte';
% imgsTestingFileName = './t10k-images.idx3-ubyte';
% labelsTestingFileName = './t10k-labels.idx1-ubyte';
dataTrain = 'DataTrain';
dataTest = 'DataTest';
% 
% % Create data
% createData(imgsTrainingFileName, labelsTrainingFileName, dataTrain);
% createData(imgsTestingFileName, labelsTestingFileName, dataTest);

% Load data train
categories = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
[imgTrainingDataStore, eachLabelTrainingCount] = loadImageData(dataTrain, categories);

% Create Bag Of Features
[newImgTrainingDataStore, newEachLabelTrainingCount, myBagOfFeatures] = createBagOfFeatures(eachLabelTrainingCount, imgTrainingDataStore);

% Show a features vector for testing
showAFeaturesVector(newImgTrainingDataStore, myBagOfFeatures, 1);

% Build a classifier model
% categoryClassifier = trainImageCategoryClassifier(ewImgTrainingDataStore, myBagOfFeatures);
% For saving time, just load it from file thanks to Mr Nguyen!
load('BagofFeature/categoryClassifier.mat');

% Load data test
[imgTestingDataStore, eachLabelTestingCount] = loadImageData(dataTest, categories);

% Build confusion matrix
confMatrix = evaluate(categoryClassifier, imgTestingDataStore);
mean(diag(confMatrix));



