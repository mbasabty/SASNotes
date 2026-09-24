*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
ODS HTML FILE = "/home/u64459399/Chapter 10 - Correlation and Regression/Corr.html";

PROC CORR 
     DATA = "/home/u64459399/Chapter 10 - Correlation and Regression/somedata.sas7bdat"
     PLOTS(ONLY) = (SCATTER MATRIX HISTOGRAM);
     VAR AGE TIME1 TIME2;
     TITLE 'Example correlations using PROC CORR';
RUN;

ODS HTML CLOSE;

/* 
	the wider the band the lower the correlation	
	the condense the band the higher the correlation 
*/