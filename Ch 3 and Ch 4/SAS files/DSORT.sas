*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
INPUT GROUP RECTIME;
DATALINES;
1    3.1
2    3.6
2    4.2
1    2.1
1    2.8
2    3.8
1    1.8
;
RUN;

PROC SORT DATA = MYDATA; 
BY RECTIME;

ODS HTML;
PROC PRINT DATA = MYDATA;
Title 'Sorting Example - Ascending';
RUN;
ODS HTML CLOSE;

PROC SORT DATA = MYDATA; 
BY DESCENDING RECTIME;

ODS HTML;
PROC PRINT DATA = MYDATA;
Title 'Sorting Example - Descending';
RUN;
ODS HTML CLOSE;
