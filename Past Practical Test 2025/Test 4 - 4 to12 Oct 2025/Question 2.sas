DATA CREDIT;  
	CREDIT 	= 30000;  
	PAYMENT = 0; 
	
	DO UNTIL (CREDIT = 0);  
		CREDIT = CREDIT - 1500;  
		PAYMENT = PAYMENT + 1;  
		OUTPUT; 
	END;  
RUN;  

PROC PRINT 
	DATA = CREDIT;
RUN;

/*There it will take 20 months to complete a credit 30000*/
