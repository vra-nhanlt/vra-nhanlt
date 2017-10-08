function result = recognite_from_md(md, testingImages, n)
testingImage = testingImages(:, n);
result = predict(md, testingImage');
end

