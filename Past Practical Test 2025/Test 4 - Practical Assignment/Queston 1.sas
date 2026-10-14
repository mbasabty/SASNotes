/*
Use SAS code to create a calculation or (Loop). 
To understand how many years, it would take one to accumulate
R100, 000, if one deposits R1500 each year into a savings 
account with a minimum of 7% interest per deposit. (Note: use DO UNTIL)

How many years would it take save R100, 000?
	
*/

DATA INVESTMENTS;
	DO UNTIL (AMOUNT >= 100000); 
		AMOUNT + 1500;
		AMOUNT + AMOUNT * 0.07; 
		YEAR + 1;
		OUTPUT;
	END;
RUN;

ODS HTML;
	PROC PRINT 
		DATA = INVESTMENTS;
	RUN;
ODS HTML CLOSE;


/*It will take between (24 – 25) years in order for the individual 
  to safe R100, 000 if one deposits R1500 every year. 
*/