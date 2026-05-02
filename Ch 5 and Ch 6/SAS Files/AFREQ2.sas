*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

ODS HTML;
PROC SORT DATA = "/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/survey.sas7bdat";
BY MARRIED;
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC FREQ DATA="/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/survey.sas7bdat"; 
     TABLES RACE;
     TITLE 'Example of PROC FREQ using OPTION=Formatted';
	 BY MARRIED;
RUN;
ODS HTML CLOSE;

PROC FORMAT;
VALUE $FMTRACE "AA"="African American"
               "H"="Hispanic"
               "OTH"="Other"
               "C"="White";
RUN;

ODS HTML;
PROC FREQ ORDER=FORMATTED DATA="/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/survey.sas7bdat"; 
     TABLES RACE;
     TITLE 'Example of PROC FREQ using OPTION=Formatted';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC FREQ ORDER=FORMATTED DATA="/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/survey.sas7bdat"; 
     TABLES RACE;
     TITLE 'Example of PROC FREQ using OPTION=Formatted';
     FORMAT RACE $FMTRACE.;
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC PRINT DATA = "/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/survey.sas7bdat";
RUN;
ODS HTML CLOSE;