function buoi02_recognition003_digits()
    % Load data
    allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    % Get trainingImagesCount
    trainingImagesCount = size(allTrainingImages, 2);
    
    % Show the first training image
    buoi02_showanimage(allTrainingImages, allTrainingLabels, 1);
    
    % Show the last training image
    buoi02_showanimage(allTrainingImages, allTrainingLabels, trainingImagesCount);
end

