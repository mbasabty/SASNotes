/*Is an experiment conducted.According to a genetic theory, crossbred pea plants show a 9:3:3:1 ratio of yellow smooth, yellow wrinkled
, green smooth and green wrinkled offspring.*/


DATA GENE;
	INPUT @1 COLOR $13. @15 NUMBER 4.;
	DATALINES; 
	YELLOWSMOOTH  152
	YELLOWWRINKLE  39
	GREENSMOOTH    53
	GREENWRINKLE    6
	;
RUN;

ODS HTML;
	PROC PRINT 
		DATA = GENE;
	RUN;
ODS HTML CLOSE;

ODS HTML;
	PROC FREQ 
		DATA = GENE;
		TABLES COLOR; /*heading of the column on the far left*/
		WEIGHT NUMBER;
	RUN;
ODS HTML CLOSE;

* HYPOTHESIZING A 9:3:3:1 RATIO;

9+3+3+1 = 16

9/16=0.5625
3/16=0.1875
3/16=0.1875
1/16=0.0625

ODS HTML;
	PROC FREQ 
		DATA  = GENE 
		ORDER = DATA ; 
		WEIGHT NUMBER; 
	    TITLE3 'GOODNESS OF FIT ANALYSIS';
	    TABLES COLOR /
	    			 NOCUM CHISQ TESTP =(0.5625 0.1875 0.1875 0.0625);
	RUN;
ODS HTML CLOSE;

/*We reject the null hypothesis at 5% significant level
  The observed offspring frequencies are significantly different 
  from the expected 9:3:3:1 ratio. Therefore, the data do not support 
  the genetic theory that the crossbred pea plants produce offspring in
  a 9:3:3:1 ratio.*/