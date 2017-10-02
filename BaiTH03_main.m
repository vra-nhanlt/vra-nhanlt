% Load data
allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');

% Show image
% buoi02_showanimage(allTrainingImages, allTrainingLabels, 1);
% buoi02_showanimage(allTrainingImages, allTrainingLabels, 500);
% buoi02_showanimage(allTrainingImages, allTrainingLabels, 5000);
% buoi02_showanimage(allTrainingImages, allTrainingLabels, 10000);
% buoi02_showanimage(allTrainingImages, allTrainingLabels, 59000);

% buoi02_showanimage(allTestingImages, allTestingLabels, 1);
% buoi02_showanimage(allTestingImages, allTestingLabels, 500);
% buoi02_showanimage(allTestingImages, allTestingLabels, 5000);
% buoi02_showanimage(allTestingImages, allTestingLabels, 9000);

%result = btth3_countbylabel(allTestingLabels, "q4.csv");
% result = recognize(allTrainingImages, allTrainingLabels, allTestingImages, 5)
% result = recognize(allTrainingImages, allTrainingLabels, allTestingImages, 500)
% result = recognize(allTrainingImages, allTrainingLabels, allTestingImages, 900)

check_recognize_result(allTrainingImages, allTrainingLabels, allTestingImages, allTestingLabels, 5);
check_recognize_result(allTrainingImages, allTrainingLabels, allTestingImages, allTestingLabels, 500);
check_recognize_result(allTrainingImages, allTrainingLabels, allTestingImages, allTestingLabels, 900);
