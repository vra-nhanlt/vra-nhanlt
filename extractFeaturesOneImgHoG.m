function featureVecto = extractFeaturesOneImgHoG( imgsData, i )
    img1D = imgsData(:, i);
    img2D = reshape(img1D, 28, 28);
    featureVecto = extractHOGFeatures(img2D);
end