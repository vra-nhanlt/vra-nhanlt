% Init variables
dataTrain = 'DataTrain';
dataTest = 'DataTest';

% Load data train
categories = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
[imgTrainingDataStore] = loadImageDataDeepLearning(dataTrain, categories);

% Load data test
[imgTestingDataStore] = loadImageDataDeepLearning(dataTest, categories);

% Extract features from imgTrainingDataStore
%[featuresTrainingData, lblTrainingData] = extractFeaturesUsingAlexnet(imgTrainingDataStore);
% For saving time purpose, just load it from file
load('DeepLearning/featuresTrain-Alex-Number.mat');
featuresTrainingData = features;
lblTrainingData = imgTrainingDataStore.Labels;

% Extract features from imgTestingDataStore
%[featuresTestingData, lblTestingData] = extractFeaturesUsingAlexnet(imgTestingDataStore);
% For saving time purpose, just load it from file
load('DeepLearning/featuresTest-Alex-Number.mat');
featuresTestingData = features;
lblTestingData = imgTestingDataStore.Labels;

% Build classifier model
classifier = fitcecoc(featuresTrainingData, lblTrainingData, 'Learners', 'Linear', 'Coding', 'onevsall', 'ObservationsIn', 'columns');
% Using fitknn (BaiTap030)
% classifier = fitcdiscr(featuresTrainingData', lblTrainingData);
% Using fitnb (BaiTap031)
% classifier = fitcnb(featuresTrainingData', lblTrainingData);
% Using fitnb (BaiTap032)
% classifier = fitcdiscr(featuresTrainingData', lblTrainingData);

% Test recognition and show result
result = predict(classifier, featuresTestingData);
checkedResult = (result == lblTestingData);
fprintf('\nRight recogition result count: %d\n', sum(checkedResult));




