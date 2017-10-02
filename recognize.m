function result = recognize(trainingImages, trainingLabels, testingImages, n)
md = fitcknn(trainingImages', trainingLabels);
testingImage = testingImages(:, n);
result = predict(md, testingImage');
end

