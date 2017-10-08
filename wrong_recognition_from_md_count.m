function result = wrong_recognition_from_md_count(md, testingImages, testingLabels, number)
count = size(testingLabels, 1);
i = 1;
wrong_count = 0;
while (i <= count)
    if (testingLabels(i) == number && recognite_from_md(md, testingImages, i) ~= number)
            wrong_count = wrong_count + 1;
    end
    i = i + 1;
end
result = wrong_count;
end

