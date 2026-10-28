DATA METHODS;
   INPUT SUBJECT METHOD $ SCORE @@;
   DATALINES;
1 A 12  1 B 15  1 C 18
2 A 10  2 B 14  2 C 13
3 A 15  3 B 16  3 C 21
4 A  9  4 B 13  4 C 15
5 A 11  5 B 12  5 C 17
6 A 14  6 B 18  6 C 19
7 A 13  7 B 13  7 C 16
8 A  8  8 B 12  8 C 14
;
RUN;

ODS HTML;
	TITLE "Friedmans Test";
	PROC FREQ	
		DATA = METHODS; 
		TABLES SUBJECT*METHOD*SCORE
									 /CHM2
									  SCORES = RANK
									  NOPRINT;
		
ODS HTML CLOSE;

/*
Ho: The distributions are the same across the repeated study methods.
Ha: There are some differences in distributions across the repeated study methods.

The statistic is about 13.61 with 2 degrees of freedom and a p-value of about 
0.0011 (1). Because the p-value is less than 0.05, we reject Ho and conclude 
the three study methods give different score distributions.
*/