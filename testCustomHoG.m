function testCustomHoG(imgsTrainingData, number, cellSize, row)
columns = 3;
subplot(5, columns, row * columns + 1);
showanimage(imgsTrainingData(:, number));

[featureData, visualHoG] = extractFeaturesOneImgCustomHoG(imgsTrainingData, number, cellSize);
subplot(5, columns, row * columns + 2);
plot(visualHoG);

subplot(5, columns, row * columns + 3);
hist(featureData);
end

