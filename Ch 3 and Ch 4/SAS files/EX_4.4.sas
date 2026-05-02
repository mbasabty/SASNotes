*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
PROC FORMAT;
     VALUE fmtYN    0 = 'No'
                    1 = 'Yes';
DATA QUESTIONS;
INPUT Q1 Q2 Q3 Q4 Q5;
DATALINES;
1 0 1 1 0
0 1 1 1 0
0 0 0 1 1
1 1 1 1 1 
1 1 1 0 1
;
PROC PRINT;
* PUT FORMAT STATEMENT HERE;
RUN;
