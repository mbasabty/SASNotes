*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
ods rtf;
PROC PRINT DATA = "/folders/myfolders/Lecture 5 - SAS Procedures/somedata"
	N = 'Number of Subjects is: '
	Obs='Subjects';
    SUM TIME1 TIME2 TIME3 TIME4;
TITLE 'PROC PRINT Example';
RUN;
ods rtf close;
