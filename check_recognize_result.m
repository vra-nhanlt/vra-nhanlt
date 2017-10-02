function check_recognize_result(trainingImages, trainingLabels, testingImages, testingLabels, n)
% show image
buoi02_showanimage(testingImages, testingLabels, n)
% show predicted label
predictedLabel = recognize(trainingImages, trainingLabels, testingImages, n);
fprintf("\n Predicted label: %d", predictedLabel);
% show result
result = check(predictedLabel, testingLabels, n);
fprintf("\n Predicted result: %s", result);
end

