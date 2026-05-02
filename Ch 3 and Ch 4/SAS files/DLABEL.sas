*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
INFILE '/folders/myfolders/Lecture 4 - Preparing Data for Analysis/BPDATA.DAT'; * READ DATA FROM FILE*;
INPUT ID $ 1 SBP 2-4 DBP 5-7 SEX $ 8 AGE 9-10 WT 11-13;
LABEL ID = 'Identification Number'
	 SBP= 'Systolic Blood Pressure'
	 DBP = 'Diastolic Blood Pressure'
	 AGE = 'Age on Jan 1, 2000'
	 WT = 'Weight';
run;

ods html;
PROC MEANS data = mydata; 
VAR SBP DBP AGE WT;
RUN;
ods html close;
