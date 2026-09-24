 /*A RANDOM SAMPLE OF FOURTEEN ELEMENTARY SCHOOL STUDENTS IS SELECTED
FROM A SCHOOL, AND EACH STUDENT IS MEASURED ON CREATIVITY SCORE (x)
USING A NEW TESTING INSTRUMENT AND ON A TASK SCORE (y) USING A STANDARD
INSTRUMENT.*/

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
		DATA = ART 
		SIMPLE;
		MODEL TASK = CREATE;
		TITLE 'Example simple linear regression using PROC REG';
	RUN;
ODS HTML CLOSE;



/*
	H0 : B = 0 (There is no predicticve linear association between Creativity and Task)
	H1 : B ≠ 0 (There is a predictive linear assocication between Creativity and Task)
	
	Since P = 0.0396 < a = 0.05 then we reject the H0. Therefore there is enough
	statistical evidence that there is a predictive linear regression between 
	Creativity and Task and the slop is not equal to 0. 
	
  
  Simple Linear Regression: TASK = CREATE

  R-Square = 0.3075

  Approximately 30.75% of the variation in task score (TASK)
  is explained by its linear relationship with creativity
  score (CREATE). The remaining 69.25% is due to other
  factors not accounted for in this model.
*/ 




