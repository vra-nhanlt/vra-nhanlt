function featuresData = extractFeaturesLBPCustomSize(imgsData, rows, columns)
    imgsDataCount = size(imgsData, 2);
    firstImgFeaturesData = extractFeaturesOneImgLBPCustomsize(imgsData, 1, rows, columns);
    
    featuresData = zeros(length(firstImgFeaturesData), imgsDataCount);
    
    featuresData(:, 1) = firstImgFeaturesData;
    
    for i = 2:imgsDataCount
        featuresData(:, i) = extractFeaturesOneImgLBPCustomsize(imgsData, i, rows, columns);
    end
end