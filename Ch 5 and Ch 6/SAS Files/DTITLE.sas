*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
INFILE '/folders/myfolders/Lecture 5 - SAS Procedures/EXAMPLE.DAT';
INPUT ID 1-3 GP $ 5 AGE 6-9 TIME1 10-14 TIME2 15-19 TIME3 20-24;
RUN;	

ods html;
PROC PRINT data = mydata;
Title 'Example SAS programs';
Title2 'This is data from the example file.';
Title4 'Using the EXAMPLE data set.';
Footnote 'This is a footnote';
RUN;
ods html close;


PROC MEANS data = mydata;
Title2 'This is output from PROC Means.';
RUN;
TITLE;
FOOTNOTE; * TURNS OFF TITLE AND FOOTNOTE;
