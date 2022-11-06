%This M file creates a random permutation from 1 to 49 and removes a 1 by 6
%matrix chunk of the 1 by 49 randomized permutation to create 6 random
%numbers for the lottery selection. Due to it being a permutation from 1 to
%49, it is impossible for a number to repeat itself. Therefore, logically, 
%the 1 by 6 chunk taken out of the permutation will never have repeating 
%numbers. 
%Author: OCdt Paterson 30648
%Date: Oct 5, 2022

numbers = randperm(49);
numbers = numbers(1:6);
disp(numbers);


%Sample output:
%>> Lab5
%     4    45    41    31    32    15


%6 random numbers should be printed and none shall be repeated and none
%shall be zero.