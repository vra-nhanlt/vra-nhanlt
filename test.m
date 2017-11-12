% Init variables
imgsTrainingFileName = './train-images.idx3-ubyte';
labelsTrainingFileName = './train-labels.idx1-ubyte';
imgsTestingFileName = './t10k-images.idx3-ubyte';
labelsTestingFileName = './t10k-labels.idx1-ubyte';

% 
% % Create data
createData(imgsTrainingFileName, labelsTrainingFileName, dataTrain);
%createData(imgsTestingFileName, labelsTestingFileName, dataTest);