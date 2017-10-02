% Q1
q1 = randi([1 200])
% Q2
A = randi([1 100], 100, 784)
q2 = A(3, 5)
% Q3
a = zeros([100 200])
% Q4
q4 = size(A,1)
% Q5
q5 = A(:, 10);
% Q6
q6 = A(10, :);
% Q7
q7 = reshape(q6, 28, 28);

