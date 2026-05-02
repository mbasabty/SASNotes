/*MEASUREMENTS OF SEVERAL CHILDREN*/

DATA CHILDREN;
	INPUT WEIGHT HEIGHT AGE; /*INLINE DATASET*/
	DATALINES;
	64 57 8
	71 59 10
	53 49 6
	67 62 11
	55 51 8
	58 50 8
	77 55 10
	57 48 9
	56 42 10
	51 42 6
	76 61 12
	68 57 9
	;
RUN;

PROC MEANS 			/*CALCULATING MEANS FOR THE DATASET*/
	DATA = CHILDREN;
	TITLE 'PROC MEANS, simplest use';
RUN;

ods html; 			/*DISPLAYING THE DATASET*/
	proc print
		data = Children;
	run;
ods html close;

PROC MEANS 			/*CALCULATING MEANS FOR THE DATASET*/
	data 	= CHILDREN 
	MAXDEC	= 2; 	/*Specifying decmial places*/
	VAR WEIGHT 
		HEIGHT;
	TITLE 'PROC MEANS, limit decimals, specify variables';
RUN;

ods html;
	proc print 
		data = Children;
	run;
ods html close;

PROC MEANS 
	data = CHILDREN 
	MAXDEC = 2 			/*Specifying decmial places*/
			 N 			/*number of obs*/
			 MEAN 		/*arithmentic average*/
			 STDERR 	/*standard error*/
			 MEDIAN;	/*median value*/
	VAR WEIGHT 
		HEIGHT;
	TITLE 'PROC MEANS, specify statistics to report';
RUN;

ods html;
	proc print 
		data = Children
		N = "NO OF OBS" ;
	run;
ods html close;