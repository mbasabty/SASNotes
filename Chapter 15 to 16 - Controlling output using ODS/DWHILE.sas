*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
TITLE;
DATA 
	TMP;
	N=0;
	
	DO WHILE(N<5);
	  OUTPUT;
	  N+1;
	END;
	
RUN;

PROC PRINT 
	DATA = tmp;
RUN;


