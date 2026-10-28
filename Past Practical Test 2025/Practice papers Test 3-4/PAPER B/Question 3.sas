DATA YIELDS;
   INPUT FERT $ YIELD @@;
   DATALINES;
F1 5.1  F1 6.3  F1 4.8  F1 5.9  F1 6.0
F2 7.2  F2 6.8  F2 8.1  F2 7.5  F2 6.9
F3 5.5  F3 6.1  F3 5.8  F3 6.6  F3 5.2
;
RUN;


ODS HTML;
	ODS GRAPHICS ON;
		PROC NPAR1WAY	
			DATA = YIELDS
				   WILCOXON;
			
			TITLE 'FARMERS TEST 3 FERTILISERS';
			CLASS FERT;
			VAR  YIELD;
		RUN;
	ODS GRAPHICS OFF;
ODS HTML CLOSE;

/*
  Ho: There is no difference among the distributions of yield for the three fertilisers.
  Ha: There are differences among the distributions of yield. 
  
  
  The Kruskal-Wallis chi-square is 9.5 with 2 degrees of freedom and the p-value is 
  about 0.0087 (1). Because this is less than 0.05, we reject Ho: the fertilisers 
  do not have the same yield distribution 
*/