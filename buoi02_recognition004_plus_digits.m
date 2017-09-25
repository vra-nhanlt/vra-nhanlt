% Count the number of images labled equal to an inputNumber and show the
% first 10 of these images
function imagesCountByLable = buoi02_recognition004_plus_digits(number)
    % Load data
    allTrainingImages = loadMNISTImages('./train-images.idx3-ubyte');
    allTrainingLabels = loadMNISTLabels('./train-labels.idx1-ubyte');
    allTestingImages = loadMNISTImages('./t10k-images.idx3-ubyte');
    allTestingLabels = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    % Init data for loop
    trainingImagesCount = size(allTrainingImages, 2);
    maxShownImages = 10;
    imagesCountByLable = 0;
    i = 1;
    
    % Count images by lable
    while (i <= trainingImagesCount)
        if (allTrainingLabels(i) == number)
            imagesCountByLable = imagesCountByLable + 1;
            if (imagesCountByLable <= maxShownImages)
                buoi02_showanimage(allTrainingImages, allTrainingLabels, i);
            end
        end
        i = i + 1;
    end
end

