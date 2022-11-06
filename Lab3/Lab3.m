%An M file to open and read a data file and to take the grades of 94
%students and make an overall class average and to distinguish who the
%highest scorer is and what their score was. The program shall first parse
%the data file and assign the specific data to their respective varibles.
%Next, the program creates a sum of all of the averages so that it can be
%divided to create the overall average. The program then compares every
%student's score and records the top performer and their top score.
%Author: OCdt Paterson 30648
%Date: Sept 21, 2022


fid = fopen('cadetData.txt','r');
studentnum = fscanf(fid, '%f');
count = 0;
sumavg = 0;
while ~feof(fid)

studentid = fgetl(fid);
name = fgetl(fid);
fgetl(fid);
cse350Mark = fscanf(fid, '%f');
fgetl(fid);
cse472mark = fscanf(fid, '%f');
avg = (cse350Mark + cse472mark)/2;
sumavg = sumavg + avg;

if count == 0
        maxavg = avg;
        maxname = name;
        maxid = studentid;
elseif avg > maxavg
        maxavg = avg;
        maxname = name;
        maxid = studentid;
end
count = count + 1;

end
fullavg = sumavg/studentnum;
disp(['Over all average is: ' num2str(fullavg)]);
disp(['The student who has the highest average is: ' maxid ' ' maxname])
disp(['His/her highest average is: ' num2str(maxavg)])
fclose(fid);
%The program should print the overall average, the student number and name
%of the highest performing student, and his/her highest average.