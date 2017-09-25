function buoi02_recognition004_digits()
    % Load data
    allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    % Show random training image
    % Init a random number
    trainingImagesCount = size(allTrainingImages, 2);
    randomNumber = randi([1 trainingImagesCount]);
    % Show image
    buoi02_showanimage(allTrainingImages, allTrainingLabels, randomNumber);
    
    % Show random testing image
    % Init a random number
    testingImagesCount = size(allTestingImages, 2);
    randomNumber = randi([1 testingImagesCount]);
    % Show image
    buoi02_showanimage(allTestingImages, allTestingLabels, randomNumber);
end

