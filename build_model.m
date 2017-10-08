function md = build_model(trainingImages, trainingLabels)
md = fitcknn(trainingImages', trainingLabels);
end

