*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
/*In this example; four drugs were given to five patients in random order.
In the crossover design. The observed value is a reaction to the drug,
where a larger value is beneficial.*/

DATA TIME;
INPUT SUBJ DRUG	OBS; /*drug is a catergorical variable
					   obs is a continous variable*/
datalines;
1 1 31
1 2 29
1 3 17
1 4 35
2 1 15
2 2 17
2 3 11
2 4 23
3 1 25
3 2 21
3 3 19
3 4 31
4 1 35
4 2 35
4 3 21
4 4 45
5 1 27
5 2 27
5 3 15
5 4 31
;
Run;

ODS HTML; 							/* Opens HTML output */
	TITLE "Friedman Analysis"; 		/* Sets the output title */
	PROC FREQ 
		DATA = time; 				/* Uses the dataset named time */
	    TABLES subj*drug*obs
	           				/ CMH2       	/* Requests the second CMH statistic */
	             			  SCORES = RANK /* Uses rank scores for the analysis FRIEDMANS ANALYSIS*/
	             			  NOPRINT;    	/* Suppresses displayed PROC FREQ output */
	RUN;
ODS HTML CLOSE; 					/* Closes HTML output */

/* First variable (A / subj): Stratification variable (Blocks).
   This tells SAS to separate the data into independent blocks
   (in this case, individual patients/subjects).

   Second variable (B / drug): Treatment variable (Rows).
   This defines the k dependent conditions/groups being compared
   across the subjects.

   Third variable (C / obs): Response variable (Columns).
   This contains the actual continuous/ordinal scores that SAS
   will rank. 
 */



/*
	H0: There is no significant difference in the responses among the
	    four drugs. The drugs have equal effects on the patients.
	
	H1: There is a significant difference in the responses among the
	    four drugs. At least one drug has a different effect.
	
	BACKGROUND:
	- Four drugs are given to five patients in random order.
	- This is a crossover design because the same patients receive
	  all four drugs.
	- The observed value represents the patient's response to the drug.
	- A larger observed value indicates a more beneficial response.
	- The Friedman test is appropriate for comparing three or more
	  related treatments when the same subjects receive each treatment.
	
	SIGNIFICANCE LEVEL:
	- alpha = 0.05
	
	INTERPRETATION:
	- The row mean scores differ test has a p-value of 0.0027.
	- Since 0.0027 < 0.05, reject H0.
	- The nonzero correlation test has a p-value of 0.2684, which is
	  greater than 0.05. This is not statistically significant.
	
	CONCLUSION:
	There is a statistically significant difference in the responses
	among the four drugs. At least one drug produces a different response
	from the others. Since larger responses are more beneficial, further
	pairwise comparisons are needed to determine which drug or drugs
	perform better.
*/

