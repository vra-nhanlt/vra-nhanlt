function buoi02_recognition002_digits()
    % Load data
    allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    % Get figures
    trainingImagesCount = size(allTrainingImages, 2);
    trainingLablesCount = size(allTrainingLabels, 1);
    testingImagesCount = size(allTestingImages, 2);
    testingLablesCount = size(allTestingLabels, 1);
    sizeOfTrainingImage = size(allTrainingImages, 1);
    
    % Show figures
    fprintf('\n trainingImagesCount: %d',  trainingImagesCount);
    fprintf('\n trainingLablesCount: %d',  trainingLablesCount);
    fprintf('\n testingImagesCount: %d',  testingImagesCount);
    fprintf('\n testingLablesCount: %d',  testingLablesCount);
    fprintf('\n sizeOfTrainingImage: %d',  sizeOfTrainingImage);
end

