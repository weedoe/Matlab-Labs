clc;
clear;
 

% Step 1: Generte a big array randomely.
arrayA = rand(1, 10000)*999+1;
 

% Step 2: Sort (use 'sort'), timing the sort process, and display 
% the first 10 elements of the sorted array.
fprintf('\n\nCall Matlab quicksort function: \n');
tic;
sortedArray = sort(arrayA);
toc;
%show the first ten elements in sortedAray
for i=1: 1 : 10
    fprintf('%5.2f\t', sortedArray(i));
end
fprintf('\n');
 
 
% Step 3: Sort (use 'bubbleSort'), timing the sort process, and display the 
% first 10 elements of the sorted array.
fprintf('\n\nCall given bubble sort function: \n');
tic
sortedArray = bubbleSort(arrayA);
toc;
%show the first ten elements in sortedAray
for i=1: 1 : 10
    fprintf('%5.2f\t', sortedArray(i));
end
fprintf('\n');
 
