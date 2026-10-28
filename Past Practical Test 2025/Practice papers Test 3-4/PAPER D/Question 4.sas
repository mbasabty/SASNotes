/*Seven judges each scored four wines. The data is stored in wide format below.*/

DATA WINES;
   INPUT JUDGE W1 W2 W3 W4;
   DATALINES;
1 12 15  9 14
2 10 16 11 13
3 14 18 10 15
4  9 13  8 12
5 11 17 12 16
6 13 14  9 15
7 10 15  7 13
;
RUN;

/*Use a DATA step with an array and a DO loop to create a long dataset called 
  WINESLONG with the variables JUDGE, WINE (1 to 4) and SCORE.*/
 
DATA WINESLONG;                     
   SET WINES;
   ARRAY W{4} W1-W4;                
   DO WINE = 1 TO 4;
      SCORE = W{WINE};
      OUTPUT;                       
   END;
   KEEP JUDGE WINE SCORE;
RUN;

 
/*Write SAS code to perform Friedman’s test on WINESLONG using PROC FREQ 
  with the CMH rank-score statistics, suppressing the summary tables.*/
 
PROC FREQ 
   DATA = WINESLONG;                                
   TABLES JUDGE*WINE*SCORE / 
   							CMH2 
   							SCORES = RANK 
   							NOPRINT;  
RUN;
 
/*State the hypotheses and give a conclusion.

  Ho: The score distributions are the same for all four wines.
  Ha: At least one wine has a different score distribution.
  
  The “Row Mean Scores Differ” statistic is about 18.26 with 3 degrees 
  of freedom and a p-value of about 0.0004 (½). We reject Ho and conclude 
  that the judges rated the wines differently, with wine 2 ranked highest 
  on average and wine 3 lowest 
 */

 