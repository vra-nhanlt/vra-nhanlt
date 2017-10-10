function output = splitMatrix(inputMatrix, r, c)
rowSize = size(inputMatrix, 1);
columnSize = size(inputMatrix, 2);

% validate input parameters
if ((mod(rowSize, r) ~= 0) || (mod(columnSize, c) ~= 0))
    fprintf("(mod(rowSize, r) ~= 0) || (mod(columnSize, c) ~= 0)");
    return;
end

% init rows array
rows = zeros(1, r);
for i = 1:r
    rows(1, i) = rowSize/r;
end

% init columns array
columns = zeros(1, c);
for i = 1:c
    columns(1, i) = columnSize/c;
end

%split matrix to cells
cells = mat2cell(inputMatrix, rows, columns);

% convert cells to an array of matrix
output = zeros(rowSize/r, columnSize/c, r, c);
for i = 1:r
    for j=1:c
        output(:, :, i, j) = cell2mat(cells(i, j));
    end
end

end

