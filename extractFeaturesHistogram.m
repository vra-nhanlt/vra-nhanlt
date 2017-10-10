function featuresData = extractFeaturesHistogram(imgsData)
    binsCount = 256;
    imgsDataCount = size(imgsData, 2);
    featuresData = zeros(binsCount, imgsDataCount);
    for i = 1:imgsDataCount
        featuresData(:, i) = imhist(imgsData(:, i), binsCount);
    end
end

