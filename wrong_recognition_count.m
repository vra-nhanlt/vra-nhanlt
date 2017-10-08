function result = wrong_recognition_count(trainingImages, trainingLabels, testingImages, testingLabels, number)
md = build_model(trainingImages, trainingLabels);
result = wrong_recognition_from_md_count(md, testingImages, testingLabels, number);
end

