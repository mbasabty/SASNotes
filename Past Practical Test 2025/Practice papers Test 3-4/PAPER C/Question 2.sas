DATA SALESDATA;
   INPUT BRANCH $ Q1 Q2 Q3 Q4;
   DATALINES;
Cape 120 135 150 160
Joburg 200 210 190 220
Durban 90 95 110 105
Pretoria 130 125 140 150
;
RUN;

/*
Print SALESDATA as a PDF file on your desktop using the 
SAPPHIRE style. The output must have the title “QUARTERLY SALES”
*/

ODS PDF FILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER C/Files/Salesdata.pdf";
	ODS PDF STYLE = SAPPHIRE;
	PROC PRINT
		DATA = SALESDATA;
		TITLE "QUATERLY SALES";
	RUN;
ODS PDF CLOSE;

/*
Use PROC TRANSPOSE to turn the quarters into rows so that each branch becomes a column. The column holding the 
old variable names must be called QUARTER, and the new dataset must be called SALEST. (3)
*/

PROC TRANSPOSE 
   DATA = SALESDATA 
   		  OUT = SALEST 
   		  NAME = QUARTER; 
   		  
   ID BRANCH;  	  
   VAR Q1-Q4;
RUN;

/*Use ODS TRACE to find the name of the table that PROC MEANS produces
  The name of the table is called summary*/

ODS TRACE ON;
	ODS GRAPHICS ON;
		PROC MEANS	
			DATA = SALESDATA;
			VAR Q1-Q4;
		RUN;
	ODS GRAPHICS OFF;
ODS TRACE OFF;

/*Using the table name from 2.3, save the PROC MEANS results for Q1 to Q4 
(mean and maximum only) into a dataset called MEANSOUT*/

ODS OUTPUT SUMMARY = MEANSOUT;                                        /* 2.4: 1 */
PROC MEANS 
   DATA = SALESDATA
   		  MEAN 
   		  MAX;                                 /* 1 */
   VAR Q1-Q4;
RUN;


