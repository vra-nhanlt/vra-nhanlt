function featuresDataOneImg = extractLocalFeaturesHistogramOneImg(imgData, rowsCount, columnsCount)
    img2D = reshape(imgData, 28, 28);
    matrices = splitMatrix(img2D, rowsCount, columnsCount);
    
    binsCount = 256;
    featuresDataOneImg = [];
    for i = 1:rowsCount
        for j = 1:columnsCount
            OnePartOfImageMatrix = matrices(:, :, i, j);
            OnePartOfImage1D = reshape(OnePartOfImageMatrix, size(OnePartOfImageMatrix, 1)*size(OnePartOfImageMatrix, 2),1);
            featuresDataOneImg = [featuresDataOneImg (imhist(OnePartOfImage1D, binsCount))'];
        end
    end
    featuresDataOneImg = featuresDataOneImg';
end


