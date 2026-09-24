 *******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
PROC SORT 
	 DATA = "/home/u64459399/Chapter 10 - Correlation and Regression/somedata.sas7bdat";
	 BY SEX;
RUN;

ODS HTML;
	PROC CORR 
		 DATA = "/home/u64459399/Chapter 10 - Correlation and Regression/somedata.sas7bdat"
		 SPEARMAN PEARSON NOSIMPLE; /*NOSIMPLE (page 219) - indicates suppresses simple statistics or descriptive statistics */
	     VAR TIME1 TIME2;
		 WITH AGE; /*gets rid of the duplication*/
		 TITLE 'Example correlations using PROC CORR';
	RUN; 
ODS HTML CLOSE;

ODS HTML;
	PROC PRINT 
		 DATA = "/home/u64459399/Chapter 10 - Correlation and Regression/somedata.sas7bdat";
	RUN;
ODS HTML CLOSE;

/*
  Pearson Correlation Coefficients
  Time 1: r = 0.50088 (moderate positive relationship)
          p = 0.0002 < a = 0.05

          Therefore, we reject the Ho, there is enough statistical
          evidence to conclude that there is a linear relationship
          between Age and Time 1

  Time 2: r = 0.38082 (moderate positive relationship)
          p = 0.0064 < a = 0.05

          Therefore, we reject the Ho, there is enough statistical
          evidence to conclude that there is a linear relationship
          between Age and Time 2
*/
