function featureVecto = extractFeaturesOneImgHoGCustomsize( imgsData, i, rows, columns )
    img1D = imgsData(:, i);
    img2D = reshape(img1D, rows, columns);
    featureVecto = extractHOGFeatures(img2D);
end