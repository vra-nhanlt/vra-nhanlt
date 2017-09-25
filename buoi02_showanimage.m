function buoi02_showanimage( images, labels, number )
    figure;
    tmpImage = images(:, number);
    tmp2DImage = reshape(tmpImage, 28, 28);
    tmpLabel = num2str(labels(number));
    tmpLabel = [tmpLabel, '(', num2str(number), ')'];
    imshow(tmp2DImage);
    title(tmpLabel);
end

