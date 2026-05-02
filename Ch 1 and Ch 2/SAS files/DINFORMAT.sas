*************************************************
* From SAS ESSENTIALS                           *
* (C) Elliott, Alan C. and Woodward, Wayne A.   *
*************************************************;
DATA MYDATA;
INPUT @1 SBP 3. @4 DBP 3. @7 GENDER $1. @8 WT 3. @12 OWE COMMA9.;
DATALINES;
120 80M115 $5,431.00
130 70F180 $12,122
140100M170 7550
120 80F150 4,523.2
125 80F110 $1000.99
;
run;

ods html;
PROC PRINT data = Work.mydata;
RUN;
ods html close;
