function recoginzeUsingSVMAndShowResult( featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, featureExtractor)
model = fitcecoc(featuresTrainingData',labelsTrainingData);
results = predict(model,featuresTestingData');
  
correctResults = (results == labelsTestingData);
fprintf("correct recognition results count (using %s): ", featureExtractor);
correctResultsCount = sum(correctResults)
end