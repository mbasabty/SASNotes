*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
INFILE '/folders/myfolders/Lecture 4 - Preparing Data for Analysis/EXAMPLE.CSV' DLM=',' FIRSTOBS=2 OBS=26;
INPUT  GROUP $ AGE TIME1 TIME2 TIME3 Time4 SOCIO;
KEEP AGE TIME1 SOCIO;
run;

ods html;
PROC PRINT data = mydata; 
RUN;
ods html close;

