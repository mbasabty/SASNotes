DATA CHILD;
   INPUT NAME $ HEIGHT WEIGHT AGE @@;
   DATALINES;
Alfred  69.0 112.5 14  Alice  56.5  84.0 13  Barbara 65.3  98.0 13
Carol   62.8 102.5 14  Henry  63.5 102.5 14  James   57.3  83.0 12
Jane    59.8  84.5 12  Janet  62.5 112.5 15  Jeffrey 62.5  84.0 13
John    59.0  99.5 12  Joyce  51.3  50.5 11  Judy    64.3  90.0 14
Louise  56.3  77.0 12  Mary   66.5 112.0 15  Philip  72.0 150.0 16
Robert  64.8 128.0 12  Ronald 67.0 133.0 15  Thomas  57.5  85.0 11
William 66.5 112.0 15
;
/*----------------------------------------------------------*/
/*Question 2.1*/
/*----------------------------------------------------------*/

ODS HTML;
	ODS GRAPHICS ON; 
		PROC CORR 
			DATA = CHILD 
			PLOTS(ONLY) = SCATTER; 
			TITLE “Scatterplot Matrix of Correlations”; 
			VAR WEIGHT HEIGHT AGE; 
		RUN;
	ODS GRAPHICS OFF;
ODS HTML CLOSE;

/*----------------------------------------------------------*/
/*Question 2.3*/
/*----------------------------------------------------------*/

/*
Thus, the variation in Weight is reduced by 0.8779 when 
Height is considered. The association between Weight and 
Height has positively strong correlation. 

Thus, the variation in Weight is reduced by 0.74089 when 
Age is considered. The association between Weight and Age 
has positively strong correlation. 

Thus, the variation in Height is reduced by 0.81143 when 
Age is considered. The association between Height and Age 
has positively strong correlation. 
*/

/*----------------------------------------------------------*/
/*Question 2.4*/
/*----------------------------------------------------------*/

ODS HTML;
	ODS GRAPHICS ON;
		PROC REG 
			DATA = CHILD; 
		    TITLE "Multiple Linear Regression"; 
			MODEL WEIGHT = HEIGHT AGE;
		RUN;
	ODS GRAPHICS OFF;
ODS HTML CLOSE;

/*----------------------------------------------------------*/
/*Question 2.6*/
/*----------------------------------------------------------*/

/*Multiple Linear Regression Model:    y = -141.2237 + 3.5970(X1) + 1.2784(X2)*/ 

/*----------------------------------------------------------*/
/*Question 2.7*/
/*----------------------------------------------------------*/

/*The R-Square value is approximately 0.7729. One can conclude 
that 77.29% of the variability in Weight can be explained by 
the Multiple Linear Regression Model.*/


