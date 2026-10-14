ODS HTML FILE = "C:\Users\Admin\Desktop\New folder\url.html";
	ODS HTML SELECT BasicMeasures; 
	ODS TRACE ON; 
			PROC UNIVARIATE 
				DATA = PRAC_LIB.mydata; 
				VAR TESTER1; 
			RUN;
	ODS TRACE OFF; 
ODS HTML CLOSE; 
