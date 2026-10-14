*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
/*HTML FORMAT*/
ODS HTML FILE = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/FILES/Example1.html";
	PROC FREQ 
		 DATA = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/somedata.sas7bdat"; 
	     TABLES GP;
		 TITLE 'Simple Example of PROC FREQ';
	RUN;
ODS HTML CLOSE;

/*RTF FORMAT*/
ODS RTF FILE = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/FILES/Example2.rtf";
	PROC FREQ 
		 DATA = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/somedata.sas7bdat"
		 ORDER = FREQ; 
		 
	     TABLES STATUS;
		 TITLE 'Example of PROC FREQ Using ORDER= Option';
	RUN;
ODS RTF CLOSE;

/*PDF FORMAT*/
ODS PDF FILE = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/FILES/Example3.pdf";
	PROC FREQ 
		 DATA = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/somedata.sas7bdat"
		 ORDER = FREQ; 
		 
		 TABLES STATUS;
		 TITLE 'Example of PROC FREQ Using ORDER = Option';
	RUN;
ODS PDF CLOSE;

PROC TEMPLATE;
	LIST STYLES;
RUN;

ODS HTML FILE = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/FILES/Example4.RTF";
	ODS HTML STYLE = MEADOW; /* Indicates the style we want for our tables*/
		PROC FREQ 
			DATA = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/somedata.sas7bdat"; 
			TABLES GP;
		RUN;
ODS HTML CLOSE;

ODS HTML FILE="/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/FILES/Example6.html"
    STYLE = FestivalPrinter;
		PROC FREQ
		    DATA="/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/somedata.sas7bdat";
		    TABLES GP;
		RUN;
ODS HTML CLOSE;











