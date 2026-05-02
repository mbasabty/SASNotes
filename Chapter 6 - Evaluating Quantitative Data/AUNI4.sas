*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
PROC FORMAT;
VALUE FMTWOUND 0="NONPENETRATE"
               1="PENETRATE";
RUN;
TITLE 'HISTOGRAMS of SBP by GENDER and WOUND TYPE';

ODS HTML FILE = "/home/u64459399/Chapter 6 - Evaluating Quantitative Data/wound.html" ;
 PROC UNIVARIATE 
	  DATA="/home/u64459399/Chapter 6 - Evaluating Quantitative Data/wound.sas7bdat" NOPRINT;
	  CLASS WOUND  
	  		GENDER;
	  VAR SBP;
	  HISTOGRAM / 
	  			NROWS=2 			/*</options>*/
	  			NCOLS=2 			/*</options>*/
	  			CFILL=BLUE 			/*</options>*/
	  			PFILL=M3N45;		/*</options>*/
	  INSET N	='N:' 	(4.0) 	/*KEYWORDS*/
	  		MIN	='MIN:' (4.1)  	/*KEYWORDS*/
	  		MAX	='MAX:' (4.1) 	/*KEYWORDS*/
	               		  / NOFRAME 
	               			POSITION	= NE  	/*</options>*/
	               			HEIGHT		= 2; 	/*</options>*/
	  FORMAT WOUND FMTWOUND.;
 RUN;
ODS HTML CLOSE;
