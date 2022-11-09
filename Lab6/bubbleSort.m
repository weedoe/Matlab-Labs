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
end % end of fuction bubbleSort()