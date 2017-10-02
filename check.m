function result = check(predictedLabel, testingLabels, n)
result = "Wrong result";

label = testingLabels(n);
if (label == predictedLabel)
    result = "Right result";
end
end

