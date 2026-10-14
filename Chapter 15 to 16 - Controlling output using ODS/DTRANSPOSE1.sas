*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
TITLE;
DATA SUBJECTS;                                                          
INPUT SUB1 $ SUB2 $ SUB3 $ SUB4 $;                                      
DATALINES;                                                              
12 21 13 14 
13 21 12 14 
15 31 23 23 
15 33 21 32 
 M  F  F  M 
;     
run;

ODS HTML;
	PROC PRINT
		DATA = subjects;
	RUN;
ODS HTML CLOSE;

ODS HTML;                                                           
	PROC TRANSPOSE 
	DATA = SUBJECTS 
		   OUT = TRANSPOSED  
		   PREFIX = x; /*column names*/                       
	  
	VAR SUB1 
		SUB2 
		SUB3 
		SUB4;            
	RUN;  
ODS HTML CLOSE;
                                                                  
ODS HTML;                                                                        
	PROC PRINT 
		DATA = TRANSPOSED;
	RUN;
ODS HTML CLOSE;


/*Changing columns to rows and rows to columns*/