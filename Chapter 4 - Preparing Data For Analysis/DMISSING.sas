*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
	INPUT ID $ SBP DBP GENDER $ AGE; 
	IF (AGE GT 12) AND (AGE LT 20) THEN TEEN=1; * IF (AGE > 12) AND (AGE < 20) THEN TEEN=1;
		ELSE TEEN = 0;
			IF AGE=. THEN TEEN=.;
	DATALINES;
	001 120 80 M 15
	002 130 70 F . 
	003 140 100 M 12
	004 180 80 F 17 
	005 144 80 F 23 
	006 165 80 M 18 
	007 121 80 F 19 
	008 195 80 M 11 
	009 162 80 M 13 
	010 112 80 F 17 
	;
run;

DATA MYDATA;
	INPUT ID $ SBP DBP GENDER $ AGE; 
	IF GENDER = "M" THEN DELETE; * IF GENDER IS MALE IT DELETES THOSE RECORDS;
	DATALINES;
	001 120 80 M 15
	002 130 70 F . 
	003 140 100 M 12
	004 180 80 F 17 
	005 144 80 F 23 
	006 165 80 M 18 
	007 121 80 F 19 
	008 195 80 M 11 
	009 162 80 M 13 
	010 112 80 F 17 
	;
run;

ods html;
PROC PRINT data = mydata;
RUN;
ods html;