*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA BPDATA;
INFILE 'inputfilename'; * Finish the INFILE statement;
INPUT ID 1 SBP 2-4 ;    * Finish the input statement;
Title "Exercise 2.4 – your name";
PROC MEANS; 
RUN;
