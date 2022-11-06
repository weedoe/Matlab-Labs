%An M-File to simulate meteor impact on a glass window through a 20x20
%array to simulate a 400cm2 area. Uses functions built into matlab to find
%the statistics that are required in the lab. Repeat the steps until half
%is reached and then record the amount of time passed in order to reach
%half. Repeat the steps until full is reached and record the amount of time
%passed in order to reach full. Use sum and max functions to sum all values
%in array and to find maximum value.
%Author: OCdt Paterson 30648
%Date: Oct 17, 2022

x = 20;
y = 20;
a = zeros(x,y);
count = 0;
counthalf = 0;
nzeros = numel(a)-nnz(a);
while nzeros ~= 200
    u = randi([1 20]);
    v = randi([1 20]); 
    a(u,v) = a(u,v)+1;
    nzeros = numel(a)-nnz(a);
    counthalf = counthalf + 1;
end
contains0 = any(a(:) == 0);
while contains0 == true
    u = randi([1 20]);
    v = randi([1 20]); 
    a(u,v) = a(u,v)+1;
    contains0 = any(a(:) == 0);
    count = count + 1;
end
sumof = sum(a,'all');
maxhit = max(a,[],'all');
disp(['The number of days for half-full window is: ', num2str(counthalf)])
disp(['The number of days for full window is: ' , num2str(count)]);
disp(['Total impacts: ', num2str(sumof)])
disp(['The average amount of impacts per cm2 is: '  num2str(sumof/400)])
disp(['The highest number of impacts per cm2 is: ' num2str(maxhit)])

% Sample output:
% >> Lab4
% The number of days for half-full window is: 834
% The number of days for full window is: 2562
% Total impacts: 3396
% The average amount of impacts per cm2 is: 8.49
% The highest number of impacts per cm2 is: 18