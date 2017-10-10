function featuresData = extractFeaturesLBP(imgsData)
    imgsDataCount = size(imgsData, 2);
    firstImgFeaturesData = extractFeaturesOneImgLBP(imgsData, 1);
    
    featuresData = zeros(length(firstImgFeaturesData), imgsDataCount);
    
    featuresData(:, 1) = firstImgFeaturesData;
    
    for i = 2:imgsDataCount
        featuresData(:, i) = extractFeaturesOneImgLBP(imgsData, i);
    end
end

