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

% selection sort test
fprintf('\n\nCall given selection sort function: \n');
tic
sortedArray = selectionSort(arrayA);
toc;
%show the last ten elements in sortedAray
for i=9991: 1:10000
    fprintf('%5.2f\t', sortedArray(i));
end
fprintf('\n');
% insertion sort test
fprintf('\n\nCall given insertion sort function: \n');
tic
sortedArray = insertionSort(arrayA);
toc;
%show the last ten elements in sortedAray
for i=9991: 1:10000
    fprintf('%5.2f\t', sortedArray(i));
end
fprintf('\n');


%Step 3 is repeated for selection and insertion to time how long it takes
%to run the function. This shows which function is fastest. The last 10
%elements of the array are displayed for selection and insertion sort as
%per the requirements set out in the rubric. 
 