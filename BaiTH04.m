% Load data
imgsTrainingFileName = './ORLFaceDB/imgTrainImagesAll.mat';
labelsTrainingFileName = './ORLFaceDB/lblTrainLabelsAll.mat';
imgsTestingFileName = './ORLFaceDB/imgTestImagesAll.mat';
labelsTestingFileName ='./ORLFaceDB/lblTestLabelsAll.mat';

load(imgsTrainingFileName);
load(labelsTrainingFileName);
load(imgsTestingFileName);
load(labelsTestingFileName);

imgsTrainingData = imgTrainImagesAll;
labelsTrainingData = lblTrainLabelsAll;
imgsTestingData = imgTestImagesAll; 
labelsTestingData = lblTestLabelsAll;

rows = 112;
columns = 92;

% Histogram
% featuresTrainingData = extractFeaturesHistogram(imgsTrainingData);
% featuresTestingData = extractFeaturesHistogram(imgsTestingData);
% 
% recoginzeAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, 'Histogram', 1);
% recoginzeAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, 'Histogram', 3);


% LBP
% featuresTrainingData = extractFeaturesLBPCustomSize(imgsTrainingData, rows, columns);
% featuresTestingData = extractFeaturesLBPCustomSize(imgsTestingData, rows, columns);
% 
% recoginzeAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, 'LBP', 1);
% recoginzeAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, 'LBP', 3);

% HoG
featuresTrainingData = extractFeaturesHoGCustomsize(imgsTrainingData, rows, columns);
featuresTestingData = extractFeaturesHoGCustomsize(imgsTestingData, rows, columns);

recoginzeAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, 'HoG', 1);
recoginzeAndShowResult(featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, 'HoG', 3);
