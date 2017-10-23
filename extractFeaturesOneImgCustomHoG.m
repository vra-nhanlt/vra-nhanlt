function [featureVecto, visualHoG] = extractFeaturesOneImgCustomHoG( imgsData, i , cellSize )
    img1D = imgsData(:, i);
    img2D = reshape(img1D, 28, 28);
    [featureVecto, visualHoG] = extractHOGFeatures(img2D, 'CellSize', cellSize);
end

