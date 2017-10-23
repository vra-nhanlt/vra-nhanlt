function BaiTap19()
imgI = imread('cameraman.jpg');
arrPointI = detectSURFFeatures(imgI);
[arrfeatureI, arrValidPointI] = extractFeatures(imgI, arrPointI);
figure;
imshow(imgI);
arrSubValidpointI = arrValidPointI.selectStrongest(20);
hold on;
plot(arrSubValidpointI);
end

