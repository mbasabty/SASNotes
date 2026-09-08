*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA COINS;
    INPUT @1 CATEGORY $9. @11 NUMBER 4.;
	DATALINES; 
	CENTS     152
	CENTS     100
	NICKELS   49
	DIMES     59
	QUARTERS  21
	HALF      44
	DOLLARS   21
	;
RUN;

ODS HTML;
	PROC PRINT 
		DATA = COINS;
	RUN;
ODS HTML CLOSE;
	
ODS HTML;
	PROC FREQ /*just the normal pro freq procedure*/
	  DATA = COINS; 
	  TITLE3 'READ IN SUMMARIZED DATA';
	  TABLES CATEGORY;
	RUN;
	
	PROC FREQ /*Just want the category table*/
	  DATA = COINS; 
	  TITLE3 'READ IN SUMMARIZED DATA';
	  TABLES CATEGORY;
	  WEIGHT NUMBER; /*it the values in NUMBER as the frequency/count for each row.*/
	RUN;
ODS HTML CLOSE;
