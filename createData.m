function createData( imagesFilename, labelsFilename, folderName )
    [imgsAll, labelsAll] = loadData(imagesFilename, labelsFilename);
    imgsCount = size(imgsAll, 2);

    % Create Folder
    mkdir(folderName);
    % Create SubFolder
    for i = 0:9
        mkdir(strcat(folderName, '\', num2str(i)));
    end

    % Extract images to conresponding folder
    index = zeros(1, 10);
    for i = 1:imgsCount
        imgI = imgsAll(:, i);
        img2D = reshape(imgI, 28, 28);
        category = labelsAll(i);
       
        % Padding filename with leading zeros
        fileName = strcat('image_', num2str(index(1, category + 1), '%05d'), '.jpg');
        path = strcat(folderName, '\',num2str(category), '\', fileName);
        
        % Save images
        imwrite(img2D, path);
        index(1, category + 1) = index(1, category + 1) + 1;
    end
end