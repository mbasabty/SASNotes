/*
You take a loan of R45 000. Interest of 1% is added to the balance 
each month, and you repay R2 500 at the end of each month. 
Use SAS code with a DO UNTIL loop to find how many monthly 
repayments are needed until the balance is zero or less. 
Use the temporary dataset name LOAN.

Write the SAS code and produce the table of monthly balances. (5)
How many months does it take to settle the loan? (1)
*/

DATA LOAN;
	BALANCE = 45000;
	MONTH = 0;
	DEPOSIT = 2500;
	
	DO UNTIL(BALANCE <= 0);
		BALANCE = BALANCE * 1.01 - DEPOSIT;
		MONTH = MONTH + 1;
		OUTPUT;
	END;
RUN;

PROC PRINT	
	DATA = LOAN;
RUN;