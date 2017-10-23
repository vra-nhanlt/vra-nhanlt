function BaiTap23()
imgI = imread('cameraman.jpg');
arrPointI = detectSURFFeatures(imgI);
imgJ = imread('cameraman30.jpg');
arrPointJ = detectSURFFeatures(imgJ);

[arrfeatureI, arrValidPointI] = extractFeatures(imgI, arrPointI);
[arrfeatureJ, arrValidPointJ] = extractFeatures(imgJ, arrPointJ);

arrIndexPair = matchFeatures(arrfeatureI, arrfeatureJ);
arrMatchedPointI = arrValidPointI(arrIndexPair(:, 1), :);
arrMatchedPointJ = arrValidPointJ(arrIndexPair(:, 2), :);

figure;
ax = axes;
showMatchedFeatures(imgI, imgJ, arrMatchedPointI, arrMatchedPointJ, 'montage', 'Parent', ax);
title(ax, 'Candidate point matches');
legend(ax, 'Matched points I', 'Matched points J');

figure;
ax = axes;
[tform, inliermatchedPointsI, inliermatchedPointsJ] = estimateGeometricTransform(arrMatchedPointI, arrMatchedPointJ, 'similarity');
showMatchedFeatures(imgI, imgJ, inliermatchedPointsI, inliermatchedPointsJ, 'montage', 'Parent', ax);
title(ax, 'Matched inlier points');
end