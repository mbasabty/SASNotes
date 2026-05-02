*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

DATA EMPLOYEES;
INPUT GENDER $ AGE;
DATALINES;
MALE 34
MALE 37
MALE 19
MALE 18
MALE 46
MALE 64
MALE 54
MALE 44
MALE 33
FEMALE 36
FEMALE 32
FEMALE 43
FEMALE 24
FEMALE 29
FEMALE 52
FEMALE 72
FEMALE 38
FEMALE 42
;
run;

PROC MEANS;
   CLASS GENDER;
RUN;
