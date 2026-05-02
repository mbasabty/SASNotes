*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
ODS HTML;
PROC FREQ DATA = "/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/somedata.sas7bdat"; 
     TABLES GP;
TITLE 'Simple Example of PROC FREQ';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC FREQ DATA='/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/somedata.sas7bdat' ORDER=FREQ; 
     TABLES STATUS;
TITLE 'Example of PROC FREQ Using ORDER= Option';
RUN;


PROC FREQ DATA='/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/somedata.sas7bdat' ORDER=FORMATTED; 
     TABLES STATUS;
TITLE 'Example of PROC FREQ Using ORDER= Option';
RUN;


PROC FREQ DATA='/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/somedata.sas7bdat' ORDER=DATA; 
     TABLES STATUS;
TITLE 'Example of PROC FREQ Using ORDER= Option';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC PRINT DATA= '/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/somedata.sas7bdat';
RUN;
ODS HTML CLOSE;














