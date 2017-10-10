function [imgsData, labelsData] = loadData(imgsFileName, labelsFileName)
imgsData = loadMNISTImages(imgsFileName);
labelsData = loadMNISTLabels(labelsFileName);
end

