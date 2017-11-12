function [imgDataStore] = loadImageDataDeepLearning(folderName, categories)
    rootFolder = fullfile(folderName);
    imgDataStore = imageDatastore(fullfile(rootFolder, categories), 'LabelSource', 'foldernames');
    imgDataStore.ReadFcn = @(filename)readAndPreprocessImage(filename);
end

