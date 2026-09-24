*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA ART;
	INPUT SUBJECT $ CREATE TASK;
	DATALINES;
	AE 28 4.5
	FR 35 3.9
	HT 37 3.9
	IO 50 6.1
	DP 69 4.3
	YR 84 8.8
	QD 40 2.1
	SW 65 5.5
	DF 29 5.7
	ER 42 3.0
	RR 51 7.1
	TG 45 7.3
	EF 31 3.3
	TJ 40 5.2
	; 
RUN;

ODS HTML;
	PROC REG 
	    DATA = ART;
		MODEL TASK = CREATE;
	TITLE 'Example simple linear regression using PROC REG';
	RUN;
ODS HTML CLOSE;



ODS HTML;
	SYMBOL1 V = Circle I = RL C = Red;  
	PROC GPLOT 
	    DATA = ART;
		PLOT TASK * CREATE; /*always have y first then x second*/
	RUN;
ODS HTML CLOSE;

/* y hat = 2.16452 + 0.06253*X1 - linear regression equation */

