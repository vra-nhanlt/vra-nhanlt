function result = confusion_matrix_custom_model(trainingImages, trainingLabels, testingImages, testingLabels, distance, k)
md = fitcknn(trainingImages', trainingLabels,'NumNeighbors', k, 'Distance', distance);
 
% Init matrix
result = zeros(11,11);
for i = 0:9
    result((i + 2), 1) = i;
    result(1, (i + 2)) = i;
end
 
%count = size(testingLabels, 1);
count = 500;
i = 1;
 
while (i <= count)
    row = testingLabels(i) + 2;
    column = recognite_from_md(md, testingImages, i) + 2;
    result(row, column) = result(row, column) + 1;
    i = i + 1;
end
end