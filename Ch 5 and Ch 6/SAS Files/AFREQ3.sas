*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA COINS;
     INPUT @1 CATEGORY $9. @11 NUMBER 3.;
DATALINES; 
CENTS     152
CENTS     100
NICKELS   49
DIMES     59
QUARTERS  21
HALF      44
DOLLARS   21
;
RUN;

ODS HTML;
PROC PRINT DATA = COINS;
RUN;
ODS HTML CLOSE;

ODS HTML;
PROC FREQ DATA = COINS; 
  TITLE3 'READ IN SUMMARIZED DATA';
  TABLES CATEGORY;
RUN;


PROC FREQ DATA = COINS; 
  TITLE3 'READ IN SUMMARIZED DATA';
  TABLES CATEGORY;
  WEIGHT NUMBER; 
RUN;
ODS HTML CLOSE;
