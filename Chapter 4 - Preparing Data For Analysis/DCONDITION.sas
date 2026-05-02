*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA;
	INPUT ID $ SBP DBP GENDER $ AGE WT;
	IF SBP GE 140 THEN STATUS="HIGH"; * IF SBP >= 140 THEN STATUS="HIGH";
		ELSE STATUS="OK";
	DATALINES;
	001 120 80 M 15 115
	002 130 70 F 25 180
	003 140 100 M 89 170
	004 180 80 F 30 150
	005 125 80 F 20 110
	;
run;

ods html;
PROC PRINT data = mydata;
RUN;
ods html close;
