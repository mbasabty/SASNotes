DATA PRESSURE;
INPUT SBPbefore SBPafter @@;
DATALINES;
120 128   124 131   130 131   118 127
140 132   128 125   140 141   135 137
126 118   130 132   126 129   127 135
;
RUN;

ODS HTML FILE = '/home/u64459399/Past Practical Test 2025 Semester 2/Test 1 - 1 to 5 Aug 2025/Extra files/Question 3.html';
	ODS GRAPHICS ON;
		PROC TTEST 
			DATA = PRESSURE;
			PAIRED SBPbefore * SBPafter;
			TITLE ‘Paired sample ttest’;
		RUN;
	ODS GRAPHICS OFF;
ODS HTML CLOSE;

/*Question 3.1*/
/*
H0 : μ_DIFF=0 – The Population average Systolic Blood Pressure is zero.
Ha : μ_DIFF≠0 – The Population average Systolic Blood Pressure is not zero.

Since the reported probability for the above T-Test statistic is 0.2992 which 
is greater than 0.01. We accept the null hypothesis. Therefore we can conclude 
that the stimuli did not significantly affect systolic blood pressure before or after.
*/