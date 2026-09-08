DATA EXAM;
   LABEL SCORE = 'EXAM SCORE';
   INPUT SCORE @@;
   DATALINES;
81 97 78 99 77 81 84 86 86 97
85 86 94 76 75 42 91 90 88 86
97 97 89 69 72 82 83 81 80 81
;
RUN;

/*Question 2.1*/
ODS HTML FILE = "/home/u64459399/Past Practical Test 2025 Semester 2/Test 1 - 1 to 5 Aug 2025/Extra files/Question 2.1";
	PROC UNIVARIATE
		DATA = EXAM NOPRINT;
		VAR SCORE;
		HISTOGRAM / NORMAL;
		INSET N = 'N' (4.0)
			  MIN = 'MIN' (4.0)
			  MAX = 'MAX' (4.0)
								/ POSITION = NW 
								  HEIGHT = 2;
	RUN;				
ODS HTML CLOSE;

/*Question 2.3*/
/*It is negatively skewed, it is skewed to the left, and the value of kurtosis is >0
  therefore it means it is leptokurtic, it has a more peaked center and has heavier tails than
  a normal distribution*/

