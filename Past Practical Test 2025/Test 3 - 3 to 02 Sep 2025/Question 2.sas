DATA HYPNOSIS;
   length EMOTION $ 10;
   INPUT SUBJECT EMOTION $ SKINRESPONSE @@;
   DATALINES;
1 fear 23.1  1 joy 22.7  1 sadness 22.5  1 calmness 22.6
2 fear 57.6  2 joy 53.2  2 sadness 53.7  2 calmness 53.1
3 fear 10.5  3 joy  9.7  3 sadness 10.8  3 calmness  8.3
4 fear 23.6  4 joy 19.6  4 sadness 21.1  4 calmness 21.6
5 fear 11.9  5 joy 13.8  5 sadness 13.7  5 calmness 13.3
6 fear 54.6  6 joy 47.1  6 sadness 39.2  6 calmness 37.0
7 fear 21.0  7 joy 13.6  7 sadness 13.7  7 calmness 14.8
8 fear 20.3  8 joy 23.6  8 sadness 16.3  8 calmness 14.8
;
RUN;

ODS HTML;
	PROC PRINT 
		DATA = HYPNOSIS;
	RUN;
ODS HTML CLOSE;



LIBNAME sas_proj “/home/u64459399/Past Practical Test Semester 2/Test 3 - 3 to 02 Sep 2025”;
Run;

PROC IMPORT 
	DATAFILE 	= “location_dataset.csv”
	OUT 		= sas_proj.skin_data
	DBMS 		= csv replace;
	GETNAMES 	= yes;
Run;

ODS HTML;
	ODS GRAPHICS ON;
		PROC FREQ
			DATA = HYPNOSIS; 
			TABLES SUBJECT*EMOTION*SKINRESPONSE / 
												  CMH2 
												  SCORES = RANK 
												  NOPRINT; 
		RUN;
	ODS GRAPHICS OFF;
ODS HTML CLOSE;

/*
	Ho: The distribution are the same across the repeated emotions. 
	Ha: There are some differences in distributions across the repeated emotions. 
	
	Friedmans test
	
	Conclusion: The Friedman’s chi-square is 6.4500
	with 3 degrees of freedom and the p-value is 0.0917. 
	Because the p-value is more than 0.05 we fail to reject H0, one would conclude 
	that the distributions are the same across the repeated emotions.

*/

