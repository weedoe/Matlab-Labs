% M-File program to ask the user and prof's name and assign it to the name and prof variable and print the
% variable to say Hello World from the user's name and Hi, World from the prof's name. "s"
% represents a string input from the user and is referenced in the print
% function through %s.
% Author: OCdt Paterson 30648
% Date: 2022-09-07

name = input ("Task 4: What is your name?\n", "s");
fprintf ("Hello World from %s!\n", name);

prof = input ('\nTask 5: What is your prof''s name?\n','s');
fprintf ('Hi, World from %s!\n', prof);

% The program prints Hello World with the name of the inputted name of the
% user and Hi, World the inputted name of the prof. Proper
% whitespace is used through \n to ensure the spaces between outputted
% lines.