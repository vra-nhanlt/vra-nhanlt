function featureVecto = extractFeaturesOneImgLBPCustomsize( imgsData, i , rows, columns)
    img1D = imgsData(:, i);
    img2D = reshape(img1D, rows, columns);
    featureVecto = extractLBPFeatures(img2D);
end

