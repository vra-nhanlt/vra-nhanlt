imgsTrainingFileName = './train-images.idx3-ubyte';
labelsTrainingFileName = './train-labels.idx1-ubyte';
imgsTestingFileName = './t10k-images.idx3-ubyte';
labelsTestingFileName = './t10k-labels.idx1-ubyte';

[imgsTrainingData, labelsTrainingData] = loadData(imgsTrainingFileName, labelsTrainingFileName);
[imgsTestingData, labelsTestingData] = loadData(imgsTestingFileName, labelsTestingFileName);

% Use original pixel as features (BaiTap026)
featureExtractor = 'Original pixels';
featuresTrainingData = imgsTrainingData;
featuresTestingData = imgsTestingData;
recoginzeUsingSVMAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, featureExtractor);

% Histogram (BaiTap027)
featureExtractor = 'Histogram';
featuresTrainingData = extractFeaturesHistogram(imgsTrainingData);
featuresTestingData = extractFeaturesHistogram(imgsTestingData);
recoginzeUsingSVMAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, featureExtractor);

% LBP
% featureExtractor = 'LBP';
% featuresTrainingData = extractFeaturesLBP(imgsTrainingData);
% featuresTestingData = extractFeaturesLBP(imgsTestingData);
% recoginzeUsingSVMAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, featureExtractor);

% HoG (BaiTap028)
featureExtractor = 'HoG';
featuresTrainingData = extractFeaturesHoG(imgsTrainingData);
featuresTestingData = extractFeaturesHoG(imgsTestingData);
recoginzeUsingSVMAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, featureExtractor);