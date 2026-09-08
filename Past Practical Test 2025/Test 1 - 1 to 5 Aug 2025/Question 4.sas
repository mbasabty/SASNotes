DATA FATCOMP;
INPUT EXPOSURE RESPONSE COUNT;
LABEL RESPONSE = ‘HEART DISEASE’;
DATALINES;
0 0  6
0 1  2
1 0  4
1 1 11
;
RUN;

ODS HTML;
	PROC FREQ DATA = FatComp;
	   WEIGHT Count;
	   TABLES Exposure*Response / CHISQ;
	RUN;
ODS HTML CLOSE;
TITLE "Chi-Square test of independence";

/*
The Chi-Square value is 4.9597 and p-value is 0.0259. Thus, 
you reject the null hypothesis of no association (Independence) 
and conclude that there is evidence of a relationship between high 
cholesterol diet and coronary heart disease.
*/