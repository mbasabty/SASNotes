DATA CALLS;
   INPUT AGENT $ CALLS;
   DATALINES;
Anele 34
Bongi 41
Carl 29
Dina 52
Emma 38
Faiz 45
Gugu 31
Henk 47
;
RUN;

ODS TRACE ON;
	PROC UNIVARIATE
		DATA = CALLS;
		VAR CALLS;
	RUN;
ODS TRACE OFF;


ODS HTML FILE = "/home/u64459399/Past Practical Test Semester 2/Practice Papers Test 3/PAPER B/Files/Question 2.html";
	ODS HTML SELECT Quantiles;
		PROC UNIVARIATE
			DATA = CALLS;
			VAR CALLS;
		RUN;
ODS HTML CLOSE;

