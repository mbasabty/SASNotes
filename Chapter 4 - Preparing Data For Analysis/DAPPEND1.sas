*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA OLD1; * created a dataset called OLD1;
	INPUT SUBJ123 $ AGEs YRS_SMOKE;
	datalines;
	001 34 12
	003 44 14
	004 55 35
	006 21 3
	;
RUN;

DATA OLD2; * created a dataset called OLD2;
	INPUT SUBJ $ AGE YRS_SMOKING;
	datalines;
	011 33 11
	012 25 19
	023 65 45
	032 71 55
	;
RUN;

data new; * create dataset and concatenating the two datasets and making them one;
set old1 old2;
run;

ods html;
	proc print data=new;
	run;
ods html close;
