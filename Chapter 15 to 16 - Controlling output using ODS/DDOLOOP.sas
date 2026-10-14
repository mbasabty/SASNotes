*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA CLINIC;
INPUT @1 ID $3. @4 VISIT1 4. @7 VISIT2 4. 
      @10 VISIT3 4. @13 VISIT4 4. @16 VISIT5 4.;
      
ARRAY TIME (5) VISIT1 - VISIT5;
	 LAST = VISIT1;

	DO I=1 TO 5;
	   IF TIME(I)>0 THEN LAST=TIME(I);
	END;

DROP I;

DATALINES;
001 34 54 34 54 65 
002 23 43 54 34   
003 23 43 .  43	  
004 45 55 21 43 23
005 54			  
;
RUN;

PROC PRINT 
	DATA = clinic;
RUN;


ODS HTML STYLE = JOURNAL;
	Title "Example of ARRAYS and DO loops";
	PROC PRINT;
	RUN;
ODS HTML CLOSE:

ARRAY TIME (5) VISIT1-VISIT5;
/* Defines an array named TIME containing 5 elements:
   VISIT1, VISIT2, VISIT3, VISIT4, and VISIT5. */

LAST = VISIT1;
/* Sets a starting baseline for a new variable named LAST
   by setting it equal to the first visit (VISIT1). */

DO I = 1 TO 5;
    /* Starts a DO loop where index variable I counts from 1 to 5.
       The loop executes 5 times for each row (patient) in the dataset.
       Iteration 1 (I=1): Checks TIME(1), which is VISIT1.
       If VISIT1 > 0, update LAST = VISIT1.
       Iteration 2 (I=2): Checks TIME(2), which is VISIT2.
       If VISIT2 > 0, overwrite LAST with VISIT2. */
    IF TIME(I) > 0 THEN LAST = TIME(I);
END;

DROP I;
/* Drops the loop counter variable I from the final dataset
   so it doesn't clutter your output table. */

/*TO STOP A LOOP WE USE STOP CURRENT COMPUTATION*/
