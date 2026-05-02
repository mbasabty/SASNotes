*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
PROC FORMAT;
	VALUE FMTAGE	LOW-12 = 'Child'
				    13,14,15,16,17,18,19 = 'Teen'
				    20-59 = 'Adult'
				    60-HIGH = 'Senior';
	VALUE FMTSTAT	1='Lower Class'
				    2='Lower-Middle'
				    3='Middle Class'
				    4='Upper-Middle'
				    5='Upper';
run;

DATA TEST;
SET "/folders/myfolders/Lecture 5 - SAS Procedures/somedata";
run;

ods html;
proc print data = test;
run;
ods html close;

ods html;
PROC PRINT DATA=TEST; 
VAR AGE STATUS GP;
FORMAT AGE FMTAGE. STATUS FMTSTAT.;
TITLE 'PROC FORMAT Example';
RUN;
ods html close;
