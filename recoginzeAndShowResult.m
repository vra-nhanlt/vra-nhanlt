function recoginzeAndShowResult( featuresTrainingData, labelsTrainingData, featuresTestingData, labelsTestingData, featureExtractor, k )
model = fitcknn(featuresTrainingData',labelsTrainingData, 'NumNeighbors', k);
results = predict(model,featuresTestingData');
  
correctResults = (results == labelsTestingData');
fprintf("correct recognition results count (using %s, k = %d): ", featureExtractor , k);
correctResultsCount = sum(correctResults)
end

