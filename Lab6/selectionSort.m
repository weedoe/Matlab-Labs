function y = selectionSort(x)
y=x;
u = length(x);
for i = (1:u)
    maxval = i;
    for j = i+1:u
        if y(maxval) >= y(j)
            maxval = j;
        end
    end
    t = y(i);
    y(i) = y(maxval);
    y(maxval) = t;
end
end

%Selection sort takes the length of an array, repeats sorting until the
%length is reached. Swaps the largest value (maxval) with the value at the end of
%the array. 


