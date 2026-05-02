*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA PRE; * created a new dataset;
	INPUT CASE PRETREAT; * variable names for the field names;
	DATALINES;
	1 1.02 
	2 2.10 
	3 1.88 
	4 2.20 
	5 1.44 
	11 1.55 
	13 1.61 
	14 2.61 
	15 1.56 
	16 0.99 
	22 1.53
	;
RUN;

PROC SORT 	 
	DATA=PRE; * Sorting the dataset PRE;
	BY CASE;
RUN;

ODS HTML;
PROC PRINT 
	DATA = PRE; * output display for the dataset PRE
RUN;
ODS HTML CLOSE;

********************************;

DATA POST; * created a new dataset;
	INPUT CASE POSTREAT; * variable names for the field names;
	DATALINES;
	1 1.94 
	2 1.63 
	3 2.73 
	4 2.18 
	5 1.82 
	11 1.94 
	13 2.25 
	14 1.70 
	15 1.78 
	16 1.52 
	22 1.97
	; 
	RUN;

PROC SORT 
	DATA=POST; * Sorting the dataset POST;
	BY CASE;
RUN;

ODS HTML;
	PROC PRINT DATA = POST; *output display for the dataset POST;
	RUN;
ODS HTML CLOSE;

DATA PREPOST;  * created a dataset for merging the two datasets created above, namly, PRE and POST dataset;			
	MERGE  PRE POST; * names of the dataset being merged;
	BY CASE;
	DIFF= POSTREAT - PRETREAT; * perfoming a mathematical calc, and a new column called DIFF is created;
RUN;

ODS HTML;
	TITLE 'Merge Example';
	PROC PRINT 
	DATA=PREPOST; *output display for the PREPOST dataset;
	RUN;
ODS HTML CLOSE;