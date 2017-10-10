function featuresData = extractLocalFeaturesHistogram(imgsData, rowsCount, columnsCount)
    binsCount = 256 * rowsCount * columnsCount;
    imgsDataCount = size(imgsData, 2);
    featuresData = zeros(binsCount, imgsDataCount);
    for i = 1:imgsDataCount
        featuresData(:, i) = extractLocalFeaturesHistogramOneImg(imgsData(:, i), rowsCount, columnsCount);
    end
end


