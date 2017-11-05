function [imgDataStore, eachLabelCount] = loadImageData(folderName, categories)
    rootFolder = fullfile(folderName);
    imgDataStore = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
    eachLabelCount = countEachLabel(imgDataStore);
end

