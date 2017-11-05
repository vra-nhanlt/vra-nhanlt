function [newImgTrainingDataStore, newEachLabelTrainingCount, myBagOfFeatures] = createBagOfFeatures(eachLabelTrainingCount, imgTrainingDataStore)
    minSetCount = min(eachLabelTrainingCount{:, 2});
    % Manually set minSetCount to 10 for a quick testing of building a bag
    % of features myself
    % minSetCount = 10;
    newImgTrainingDataStore = splitEachLabel(imgTrainingDataStore, minSetCount, 'randomize');
    newEachLabelTrainingCount = countEachLabel(newImgTrainingDataStore);
    %myBagOfFeatures = bagOfFeatures(newImgTrainingDataStore);
    
    % Instead of building a bag of features myself, 
    % Load it from file to save my time
    load('BagofFeature/bag.mat');
    myBagOfFeatures = bag;
end

