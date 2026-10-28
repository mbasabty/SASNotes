DATA REVISION;
   INPUT BEFORE AFTER @@;
   DATALINES;
82 78  75 70  90 84  68 66  77 70
85 76  71 72  80 72  79 76
;
RUN;

/*Create a new dataset called DIFFS that contains the variable DIFF, 
  the difference BEFORE minus AFTER. (2)*/
 
DATA DIFFS;                           
   SET REVISION;
   DIFF = BEFORE - AFTER;            
RUN;

/*Write SAS code to test whether the median difference is zero, 
  using the Wilcoxon signed rank test. */
 
PROC UNIVARIATE 
   DATA = DIFFS;         
   VAR DIFF;                        
RUN;

/*alternative*/

PROC UNIVARIATE 
   DATA = DIFFS MU0=0;
   VAR DIFF;
   ODS SELECT TestsForLocation;
RUN;

/*
  Ho: The median difference is zero (the workshop made no difference).
  Ha: The median difference is not zero
  
  
  The signed rank statistic S is 21.5 and the exact p-value is about 0.0078.
  This is less than 0.05 (1), so we reject Ho. The scores before and after 
  the workshop differ, and because 8 of the 9 differences are positive, scores
  were higher before (the “after” scores are lower).
*/
