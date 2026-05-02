*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA BIRTHDATES;
INPUT ID $ 1-5 ;          * finish INPUT statement;
FORMAT BDATE someformat.; * finish OUTPUT FORMAT statement;
DATALINES;
00001M112JAN1979
00021F003MAR1959
00043F018JUL1981
00054M022DEC1968
00132F110JUL1952
;
Title "Exercise 2.3 – your name";
PROC PRINT;
RUN;
