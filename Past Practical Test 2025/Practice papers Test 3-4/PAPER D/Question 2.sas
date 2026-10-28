DATA STAFF;
   INPUT GENDER $ DEPT $ SALARY;
   DATALINES;
F HR 21000
M IT 34500
F IT 38000
M HR 19500
F FIN 27000
M FIN 29500
F HR 23000
M IT 41000
F FIN 31000
M HR 20500
;
RUN;

/*Use ODS TRACE to find the names of the tables that PROC FREQ produces for the variable DEPT
  OneWayFreqs
*/
ODS TRACE ON;
	PROC FREQ	
		DATA = STAFF;
		TABLES DEPT;
	RUN;
ODS TRACE OFF;

/*Create a PDF file on your desktop that contains only the frequency table for DEPT.*/
ODS PDF FILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER D/Files/Depts.pdf";
	ODS PDF SELECT OneWayFreqs;
		PROC FREQ	
			DATA = STAFF;
			TABLES DEPT;
		RUN;
ODS PDF CLOSE;

/*Create an HTML file on your desktop with the PROC UNIVARIATE results for SALARY, 
  but exclude the tables “Moments” and “ExtremeObs”. */

ODS TRACE ON;
	PROC UNIVARIATE
		DATA = STAFF;
		VAR SALARY;
	RUN;
ODS TRACE OFF;

ODS HTML FILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER D/Files/Salary.html";
/*ODS HTML SELECT Quantiles
				BasicMeasures
				TestsForLocation;*/
ODS HTML EXCLUDE Moments ExtremeObs;
		PROC UNIVARIATE
			DATA = STAFF;
		VAR SALARY;
		RUN;
ODS HTML CLOSE;
				








