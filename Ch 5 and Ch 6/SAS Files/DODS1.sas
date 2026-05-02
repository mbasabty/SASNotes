*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
ODS HTML;
PROC MEANS DATA="C:\SASDATA\SOMEDATA" MAXDEC=2 ;
VAR AGE TIME1-TIME4;
TITLE 'Example output to HTML';
RUN;
ODS HTML CLOSE;
