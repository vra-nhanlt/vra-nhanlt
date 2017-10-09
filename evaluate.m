function [total_correct_results_count, average_recall, average_precision] = evaluate(trainingImages, trainingLabels, testingImages, testingLabels, distance, k)
cufusion_matrix = confusion_matrix_custom_model(trainingImages, trainingLabels, testingImages, testingLabels, distance, k)
 
% average recall; average precision
total_correct_results_count = 0;
sum_recall = 0;
sum_precision = 0;
label_max = 9;
for (i = 0: label_max)
    all_correct_result_count = 0;
    all_returned_result_count = 0;
    for (j = 0: label_max)
        all_correct_result_count = all_correct_result_count + cufusion_matrix((i + 2), (j + 2));
        all_returned_result_count = all_returned_result_count + cufusion_matrix((j + 2),(i + 2));
    end
    returned_correct_result_count = cufusion_matrix((i + 2), (i + 2));
    total_correct_results_count = total_correct_results_count + returned_correct_result_count;
    
    current_recall = returned_correct_result_count / all_correct_result_count;
    sum_recall = sum_recall + current_recall;
    
    current_precision = returned_correct_result_count / all_returned_result_count;
    sum_precision = sum_precision + current_precision;
end
 
total_correct_results_count
average_recall = sum_recall/(label_max + 1)
average_precision = sum_precision/(label_max + 1)
end