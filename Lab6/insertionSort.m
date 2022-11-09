function y = insertionSort(x)
y=x;
u = length(x);
for i = 2:u
    j = i;    
    while((j > 1) && (y(j) < y(j-1)))
        temp = y(j);
        y(j) = y(j-1);
        y(j-1) = temp;
        j = j-1;
    end
end


%Insertion sets a marker (i) at 2 and repeats until length(x) +1 is reached
%and set a temp value to y(j). Swaps y(j) and y(j-1) if out of order and
%ending for loop if in order.