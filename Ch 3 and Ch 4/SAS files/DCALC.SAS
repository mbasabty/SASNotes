*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA ROOMSIZE;
	INPUT ROOM $ WIDTH LENGTH;
	* The next line calculates a new variable, AREA;
	AREA=WIDTH*LENGTH; 
	DATALINES;
	LIVING   14 22
	DINING   14 12
	BREAKFAST 10 12
	KITCHEN 12 16
	BEDROOM1 18 12
	BEDROOM2 12 14
	BEDROOM3 13 16
	BATH1	  8 12
	BATH2	  7 10
	BATH3     6 8
	GARAGE 23 24
	;
RUN;

ods html;
PROC PRINT data = roomsize; 
SUM AREA;
RUN;
ods html close;


