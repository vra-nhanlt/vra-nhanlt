matrix = zeros(10, 15);
for i=1:10
    for j=1:15
        matrix(i,j) = randi([1 10]);
    end
end

matrix
output = splitMatrix(matrix, 2, 3)