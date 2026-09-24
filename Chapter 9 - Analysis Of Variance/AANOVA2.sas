*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA ACHE;
	INPUT BRAND RELIEF;
	CARDS;
	1 24.5
	1 23.5
	1 26.4
	1 27.1
	1 29.9
	2 28.4
	2 34.2
	2 29.5
	2 32.2
	2 30.1
	3 26.1
	3 28.3
	3 24.3
	3 26.2
	3 27.8
	;
RUN;

ODS HTML;
	PROC ANOVA 
		DATA = ACHE;
	    CLASS BRAND; /*Grouping Variable - Categorical Variable*/ 
	    MODEL RELIEF = BRAND;
	    MEANS BRAND
	    			/ TUKEY 
	    			  CLDIFF;
		TITLE 'COMPARE RELIEF ACROSS MEDICINES  - ANOVA EXAMPLE';
	RUN;
ODS HTML CLOSE;


/*
	A low p value for f test indicates at least one pair of means is not equal
	Brand 1 
	Brand 3 is the better option because it has a better average it takes for headache relife
	"	" Brand 3 and 1 are not significantly different from one another
	"***" Brand 2 and 3 are siginificantly different from one another
*/
