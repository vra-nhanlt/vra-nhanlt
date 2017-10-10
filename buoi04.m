imgsTrainingFileName = './train-images.idx3-ubyte';
labelsTrainingFileName = './train-labels.idx1-ubyte';
imgsTestingFileName = './t10k-images.idx3-ubyte';
labelsTestingFileName = './t10k-labels.idx1-ubyte';

[imgsTrainingData, labelsTrainingData] = loadData(imgsTrainingFileName, labelsTrainingFileName);
[imgsTestingData, labelsTestingData] = loadData(imgsTestingFileName, labelsTestingFileName);

% Histogram
% featuresTrainingData = extractFeaturesHistogram(imgsTrainingData);
% featuresTestingData = extractFeaturesHistogram(imgsTestingData);

% Local Features Histogram 2x2
% featuresTrainingData = extractLocalFeaturesHistogram(imgsTrainingData, 2, 2);
% featuresTestingData = extractLocalFeaturesHistogram(imgsTestingData, 2, 2);

% LBP
% featuresTrainingData = extractFeaturesLBP(imgsTrainingData);
% featuresTestingData = extractFeaturesLBP(imgsTestingData);

% Local Features LBP 2x2
% featuresTrainingData = extractLocalFeaturesLBP(imgsTrainingData, 2, 2);
% featuresTestingData = extractLocalFeaturesLBP(imgsTestingData, 2, 2);
% 
% model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', 1);
% results = predict(model,featuresTestingData');
% 
% correctResults = (results == labelsTestingData);
% fprintf("Local Features LBP 2x2, k = 1");
% correctResultsCount = sum(correctResults)

% -------------------------
% Local Features LBP 2x2, k =1
featuresTrainingData = extractLocalFeaturesLBP(imgsTrainingData, 2, 2);
featuresTestingData = extractLocalFeaturesLBP(imgsTestingData, 2, 2);

model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', 1);
results = predict(model,featuresTestingData');

correctResults = (results == labelsTestingData);
fprintf("\nLocal Features LBP 2x2, k = 1: ");
correctResultsCount = sum(correctResults)

% ----------------------------------
% Local Features LBP 2x2, k =3
model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', 3);
results = predict(model,featuresTestingData');

correctResults = (results == labelsTestingData);
fprintf("\nLocal Features LBP 2x2, k = 3: ");
correctResultsCount = sum(correctResults)


