/*
  Use SAS code to create a loop. You want to know how many years 
  it will take to accumulate R50 000 if you deposit R2 500 at the 
  end of each year into a savings account that earns 6% interest 
  per year. The balance starts at R0. 
  (Note: use DO UNTIL and the temporary dataset name SAVINGS.)
*/
 

DATA SAVINGS;
   BALANCE = 0;                        /* 1 */
   YEAR = 0;                           /* 1 */
  
   DO UNTIL (BALANCE >= 50000);        /* 1 */
      BALANCE + 2500;                  /* 1 */
      BALANCE = BALANCE * 1.06;        /* 1 */
      YEAR + 1;
      OUTPUT;
   END;
RUN;

PROC PRINT 
	DATA = SAVINGS;
RUN;

/*It takes 13 years (balance about R50 037.66 in year 13)*/