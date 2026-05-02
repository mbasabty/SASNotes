*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

DATA SAS_LIB.PEOPLE;
INPUT ID $ 1 SBP 2-4 DBP 5-7 GENDER $ 8 AGE 9-10 WT 11-13;
DATALINES;
1120 80M15115
2130 70F25180
3140100M89170
4120 80F30150
5125 80F20110
;
RUN;

ods html;
PROC MEANS data = ;
RUN;
ods html close;
