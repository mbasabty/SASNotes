

DATA MYDATA;
INPUT TESTER1 TESTER2 TESTER3 TESTER4;
DATALINES;
22 25 21 21  
15 19 18 17  
17 19 19 19  
20 19 16 19  
14 15 13 13  
15 17 18 19  
10 11 9  10  
22 24 23 21 
;
RUN;

/*Question 2.1*/
LIBNAME PRAC_LIB "/home/u64459399/Past Practical Test Semester 2/Test 4 -  4 to 12 Oct 2025";
RUN;



/*Question 2.2*/
ODS HTML;
	PROC IMPORT 
		OUT = PRAC_LIB.mydata 
		DATAFILE = "/home/u64459399/Past Practical Test Semester 2/Test 4 -  4 to 12 Oct 2025/mydata.txt" 
		DBMS = dlm REPLACE; 
	RUN; 
ods html close;



/*Question 2.3*/
ODS PDF; 
	PROC PRINT 
		DATA = PRAC_lIB.mydata; 
	RUN;
ODS PDF CLOSE; 



/*Question 2.4*/
ODS HTML;
	PROC TRANSPOSE 
		DATA 	= PRAC_LIB.mydata  
		OUT 	= PRAC_lIB.mydatatransposed  
		PREFIX 	= X; 
		VAR TESTER1 TESTER2 TESTER3 TESTER4; 
	RUN;
ODS HTML CLOSE;



/*Question 2.5*/
ODS RTF;
	ODS RTF STYLE = JOURNAL; 
		ODS GRAPHICS ON;
			PROC PRINT 
				DATA = PRAC_LIB.mydatatransposed; 
			RUN;
		ODS GRAPHICS OFF;
	ODS RTF CLOSE; 
ODS RTF CLOSE;


