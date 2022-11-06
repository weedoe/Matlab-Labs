%An M file to record the names and 2 class averages of 3 students and to
%compare their averages against each other to find the highest average and
%the lowest average amoungst the group. First the program shall collect the
%data of the name and marks and assign them to separate variables, next
%create a variable to calculate the average. Next use loops to compare the
%averages and to record the highest and lowest averages to their respective
%variables. 
%Author: OCdt Paterson 30648
%Date: Sept 14, 2020


studentnumber = 3;
count = 0;
while count ~= studentnumber
    name = input ('Enter the student name: ','s');
    mark1 = input ('Enter the mark of CSE350: ');
    mark2 = input ('Enter the mark of CSE472: ');
    disp (['The student: ', name]);
    avg = (mark1 + mark2)/2;
    if count == 0
        maxavg = avg;
        minavg = avg;
        maxname = name;
        minname = name;
    elseif avg > maxavg
        maxavg = avg;
        maxname = name;
    elseif avg < minavg
        minavg = avg;
        minname = name;
    end
    disp (['The average is ', num2str(avg)]);
count = count + 1;    
end

disp (['In total of 3 students,' newline ...
    'the student has maximium average is ' maxname newline ...
    'and the maximium average is: ' num2str(maxavg) newline ...
    'the student has minimium average is ' minname newline ...
    'and the minimium average is: ' num2str(minavg)]);

%The program should have printed the names of the highest and lowest
%performers and their respective averages.

%Task 4:
%When dealing with a large dataset, it is wise to use arrays to your
%advantage in order to sort through the large amounts of data. The data
%would not be entered manually and instead parsed from the database. I
%would write my code using the same sorting algorithem, however, I would
%use a different looping system to complete the program when the values are
%all processed and use arrays to compare the values more efficiently.