function featuresData = extractFeaturesHoGCustomsize(imgsData, rows, columns)
    imgsDataCount = size(imgsData, 2);
    firstImgFeaturesData = extractFeaturesOneImgHoGCustomsize(imgsData, 1, rows, columns);
    
    featuresData = zeros(length(firstImgFeaturesData), imgsDataCount);
    
    featuresData(:, 1) = firstImgFeaturesData;
    
    for i = 2:imgsDataCount
        featuresData(:, i) = extractFeaturesOneImgHoGCustomsize(imgsData, i, rows, columns);
    end
end