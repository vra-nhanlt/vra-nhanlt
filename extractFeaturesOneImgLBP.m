function featureVecto = extractFeaturesOneImgLBP( imgsData, i )
    img1D = imgsData(:, i);
    img2D = reshape(img1D, 28, 28);
    featureVecto = extractLBPFeatures(img2D);
end

