function featuresData = extractLocalFeaturesLBP(imgsData, rowsCount, columnsCount)
    imgsDataCount = size(imgsData, 2);
    firstImgFeaturesData = extractLocalFeaturesLBPOneImg(imgsData(:, 1), rowsCount, columnsCount);
    
    featuresData = zeros(length(firstImgFeaturesData), imgsDataCount);
    
    featuresData(:, 1) = firstImgFeaturesData;
    
    for i = 2:imgsDataCount
        featuresData(:, i) = extractLocalFeaturesLBPOneImg(imgsData(:, i), rowsCount, columnsCount);
    end
end

