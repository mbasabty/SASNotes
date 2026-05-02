*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

ODS HTML;
PROC FREQ DATA="/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/rash.sas7bdat";
   TABLES CLEANER*RASH /CHISQ;
   TITLE 'CHI-SQUARE ANALYSIS FOR A 2X2 TABLE';
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC PRINT DATA = "/home/n32675700/my_content/mvalentine0/Chapter 7 - Analysing Counts and Tables/rash.sas7bdat";
RUN;
ODS HTML CLOSE;
