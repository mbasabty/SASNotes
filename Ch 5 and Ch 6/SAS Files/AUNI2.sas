*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA EXAMPLE;
INPUT AGE @@;
DATALINES;
12 11 12 12 9 11 8 8 7 11 12 14 9 10 7 13
6 11 12 4 11 9 13 6 9 7 13 9 13 12 10 13
11 8 11 15 12 14 10 10 13 13 10 8 12 7 13
11 9 12
;
RUN;

ODS HTML;
PROC UNIVARIATE NORMAL PLOT DATA=EXAMPLE;
VAR AGE;
HISTOGRAM AGE/NORMAL ;
TITLE 'PROC UNIVARIATE EXAMPLE';
RUN;
ODS HTML CLOSE;
