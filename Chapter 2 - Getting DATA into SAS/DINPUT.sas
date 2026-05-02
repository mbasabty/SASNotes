*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
INFILE "/home/u64459399/Chapter 2 - Getting DATA into SAS/EXAMPLE.DAT";
INPUT ID $ 1-3 GP $ 5 AGE 6-9 TIME1 10-14 TIME2 15-19 TIME3 20-24;
run;

ods html;
PROC MEANS data = mydata;
RUN;
ods html close;
