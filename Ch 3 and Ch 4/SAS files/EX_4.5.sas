*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 2nd Ed, Wiley                        *
* (C) 2016 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example is a Chapter 4 exercise;

PROC FORMAT LIBRARY = MYSASLIB.CAT2;
	VALUE FMTAGE	LOW-12 = 'Child'
				    13,14,15,16,17,18,19 = 'Teen'
				    20-59 = 'Adult'
				    60-HIGH = 'Senior';
	VALUE FMTSTAT	1='Lower Class'
				    2='Lower-Middle'
				    3='Middle Class'
				    4='Upper-Middle'
				    5='Upper';
RUN;
