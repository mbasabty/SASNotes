/*
	Save the text below as marks.txt on your desktop 
	(first row contains the variable names) 
	and use it to answer Questions 2.1 to 2.5.
	
	Test1 Test2 Test3 Test4
	18 21 19 20
	14 16 15 17
	22 24 23 25
	11 13 12 12
	17 19 20 18
	9 12 10 11
*/

/*Create a library called MYLIB using SAS code and not the Library Wizard.*/
LIBNAME MYLIB "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER A"; 
  

/*Import marks.txt into MYLIB and name the dataset MARKS.*/
PROC IMPORT                          
   DATAFILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER A/mydata.txt"
   DBMS 	= DLM REPLACE
   OUT 		= MYLIB.MARKS;                                
RUN;


/*Use the printing procedure to view MYLIB.MARKS. The output must be a PDF document.*/
ODS PDF FILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER A/Files/marks.pdf";   
	PROC PRINT 
		DATA = MYLIB.MARKS;
	RUN;
ODS PDF CLOSE;                                       


/*Use PROC TRANSPOSE to turn Test1 to Test4 from columns into rows. The new columns must 
  be named Y1, Y2, Y3, etc., and the dataset must be called MARKST.*/
PROC TRANSPOSE 
   DATA = MYLIB.MARKS 
   OUT = MARKST 
   		 PREFIX = Y;   
   VAR TESTER1 
   	   TESTER2 
   	   TESTER3 
   	   TESTER4;                            
RUN;

PROC TEMPLATE;
	LIST STYLES;
RUN;

/* Modify your code from 2.4 so that the printed MARKST 
   table is produced as an RTF file using the JOURNAL style.*/
ODS PDF FILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER A/Files/MarksT.pdf"
	STYLE = MeadowPrinter;
	PROC PRINT 
		DATA = MARKST;
	RUN;
ODS PDF CLOSE;                                   

