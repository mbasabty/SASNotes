*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

ODS HTML;
	PROC FREQ 
	   DATA = "/home/u64459399/Chapter 7 - Analysing Counts and tables/rash.sas7bdat";
	   TABLES CLEANER * RASH /*Analysing two-way frequency tables*/
	   					  /CHISQ;
	   TITLE 'CHI-SQUARE ANALYSIS FOR A 2X2 TABLE';
	   

	RUN;
ODS HTML CLOSE; 

ODS HTML;
	PROC PRINT 
	   DATA = "/home/u64459399/Chapter 7 - Analysing Counts and tables/rash.sas7bdat";
	RUN;
ODS HTML CLOSE;
