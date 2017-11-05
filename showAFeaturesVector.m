function showAFeaturesVector( imgDataSource, myBagOfFeatures, position)
    img = readimage(imgDataSource, position);
    featureVector = encode(myBagOfFeatures, img);
    
    % Show vector
    figure
    bar(featureVector)
    title('Visual word occurrences')
    xlabel('Visual word index')
    ylabel('Frequency of occurrence')
end

