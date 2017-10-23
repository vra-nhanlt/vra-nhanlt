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

% LBP
% featuresTrainingData = extractFeaturesHoG(imgsTrainingData);
% featuresTestingData = extractFeaturesHoG(imgsTestingData);
% 
% model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', 3);
% results = predict(model,featuresTestingData');
%  
% correctResults = (results == labelsTestingData);
% fprintf("correct recognition results count (using Features HoG): ");
% correctResultsCount = sum(correctResults)

% 'Cellsize', [7 7]
% subplot(2, 5, 1);
% imgShow
% hist

% -------------------------
% Local Features LBP 2x2, k =1
% featuresTrainingData = extractLocalFeaturesLBP(imgsTrainingData, 2, 2);
% featuresTestingData = extractLocalFeaturesLBP(imgsTestingData, 2, 2);
% 
% model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', 1);
% results = predict(model,featuresTestingData');
% 
% correctResults = (results == labelsTestingData);
% fprintf("\nLocal Features LBP 2x2, k = 1: ");
% correctResultsCount = sum(correctResults)

% ----------------------------------
% Local Features LBP 2x2, k =3
% model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', 3);
% results = predict(model,featuresTestingData');
% 
% correctResults = (results == labelsTestingData);
% fprintf("\nLocal Features LBP 2x2, k = 3: ");
% correctResultsCount = sum(correctResults)

testCustomHoG(imgsTrainingData, 1993, [7 7], 0);
testCustomHoG(imgsTrainingData, 1994, [7 7], 1);
testCustomHoG(imgsTrainingData, 1995, [7 7], 2);
testCustomHoG(imgsTrainingData, 1996, [7 7], 3);



