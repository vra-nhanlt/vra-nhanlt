function featuresDataOneImg = extractLocalFeaturesLBPOneImg(imgData, rowsCount, columnsCount)
    img2D = reshape(imgData, 28, 28);
    matrices = splitMatrix(img2D, rowsCount, columnsCount);
    
    featuresDataOneImg = [];
    
    for i = 1:rowsCount
        for j = 1:columnsCount
            featuresDataOneImg = [featuresDataOneImg (extractLBPFeatures(matrices(:, :, i, j)))];
        end
    end
    
    featuresDataOneImg = featuresDataOneImg';
end

