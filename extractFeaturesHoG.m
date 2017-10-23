function featuresData = extractFeaturesHoG(imgsData)
    imgsDataCount = size(imgsData, 2);
    firstImgFeaturesData = extractFeaturesOneImgHoG(imgsData, 1);
    
    featuresData = zeros(length(firstImgFeaturesData), imgsDataCount);
    
    featuresData(:, 1) = firstImgFeaturesData;
    
    for i = 2:imgsDataCount
        featuresData(:, i) = extractFeaturesOneImgHoG(imgsData, i);
    end
end

