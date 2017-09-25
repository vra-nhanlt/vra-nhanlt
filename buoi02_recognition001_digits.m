function buoi02_recognition001_digits()
    % Load data
    fprintf('\nStarting loading data...')
    allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    fprintf('\nLoading data completed.')
end

