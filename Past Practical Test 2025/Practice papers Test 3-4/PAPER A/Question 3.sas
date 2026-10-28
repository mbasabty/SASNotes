/*
A company tested two training programmes. Eight employees completed Programme 1 
and seven completed Programme 2. Their scores are below.
*/

DATA TRAINING;
   INPUT PROG SCORE @@;
   DATALINES;
1 12  1 15  1 14  1 10  1 18  1 16  1 13  1 11
2 19  2 22  2 17  2 21  2 25  2 24  2 20
;
RUN;

/*
Write SAS code to compare the two independent groups using the 
Wilcoxon test and request exact p-values. Give the output the title 
“COMPARE TWO TRAINING PROGRAMMES”.
*/

ODS GRAPHICS ON;
	PROC NPAR1WAY 
	   DATA = TRAINING 
	   		  WILCOXON;   
	   TITLE "COMPARE TWO TRAINING PROGRAMMES";
	   CLASS PROG;                            
	   VAR SCORE;                               
	   EXACT;                                  
	RUN;
ODS GRAPHICS OFF;


/*State the null and alternative hypotheses.

  Ho: The two training programmes have the same distribution of scores (they come from the same population).
  Ha: The two programmes do not have the same distribution of scores (they come from different populations). 
*/

/*
  Give a conclusion using the two-sided exact p-value, stating whether the programmes differ.
  The Wilcoxon rank sum for Programme 1 is 37. The two-sided exact p-value is about 0.0006, 
  which is less than 0.05, so we reject Ho. The two programmes produce different distributions 
  of scores, with Programme 2 scoring higher 
*/


