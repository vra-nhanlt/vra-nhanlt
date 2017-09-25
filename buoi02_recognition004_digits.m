function buoi02_recognition004_digits()
    % Load data
    allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    % Init a random number
    trainingImagesCount = size(allTrainingImages, 2);
    randomNumber = randi([1 trainingImagesCount]);
    
    % Show random training image
    % Init a random number
    trainingImagesCount = size(allTrainingImages, 2);
    randomNumber = randi([1 trainingImagesCount]);
    % Show image
    figure;
    tmpTrainingImage = allTrainingImages(:, randomNumber);
    tmpTraining2DImage = reshape(tmpTrainingImage, 28, 28);
    tmpTrainingLabel = num2str(allTrainingLabels(randomNumber));
    tmpTrainingLabel = [tmpTrainingLabel, '(', num2str(randomNumber), ')'];
    imshow(tmpTraining2DImage);
    title(tmpTrainingLabel);
    
    % Show random testing image
    % Init a random number
    testingImagesCount = size(allTestingImages, 2);
    randomNumber = randi([1 testingImagesCount]);
    % Show image
    figure;
    tmpTestingImage = allTestingImages(:, randomNumber);
    tmpTesting2DImage = reshape(tmpTestingImage, 28, 28);
    tmpTestingLabel = num2str(allTestingLabels(randomNumber));
    tmpTestingLabel = [tmpTestingLabel, '(', num2str(randomNumber), ')'];
    imshow(tmpTesting2DImage);
    title(tmpTestingLabel);
end

