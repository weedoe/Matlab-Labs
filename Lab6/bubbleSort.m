% Bubble Sort in M-Function
% by Dr. Yawei Liang, 20221016
%
% bubble sort algorithm:
% sorting an 1-D array into ascending order and with time of n^2
%
% bubble sort algorithm:
% into ascending order and with time of n^2
%
% 1. get a, an array of values
% 2. set the unsorted marker u at the beginning of the array (u=1)
% 3. repeat step 4 through 8 until the unsorted section has just 
%    one element (e.g., u=length(a))
% 4.     set the current element marker c = length(a)
% 5.     repeat step 6 and 7 until c=u
% 6.       if a(c) < a(c-1) then exchange these two items
% 7.       c=c-1
% 8.     u=u-1
% 9. Halt.


% clc;
% clear;

% fprintf('\n\nBubble sort starts working ---------------------------');
% Exercise 7: bubble sort in m-function.
%
% w = rand(1, 4)

function y = bubbleSort(x)
u = length(x);

while (u ~= 1)
    c = 2;
    while (c <= u)
        if x(c) < x(c-1)
            temp = x(c);
            x(c) = x(c-1);
            x(c-1) = temp;
        end % end of if
        c = c+1;
    end % end the inner while loop
    u=u-1;

end % end of while

y=x;

end  % end of fuction bubbleSort()