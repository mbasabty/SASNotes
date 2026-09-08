DATA GRADE;
INPUT NAME $ 1-8 GENDER $ 11 STATUS $ 13 YEAR $ 15-16
          SECTION $ 18 SCORE 20-21 FINALGRADE 23-24;
    DATALINES;
Abbott    F 2 97 A 90 87
Branford  M 1 98 A 92 97
Crandell  M 2 98 B 81 71
Dennison  M 1 97 A 85 72
Edgar     F 1 98 B 89 80
Faust     M 1 97 B 78 73
Greeley   F 2 97 A 82 91
Hart      F 1 98 B 84 80
Isley     M 2 97 A 88 86
Jasper    M 1 97 B 91 93
;
RUN;

ODS HTML FILE ="/home/u64459399/Past Practical Test 2025 Semester 2/Test 1 - 1 to 5 Aug 2025/Sorting.html";
	PROC SORT 
		DATA=GRADE;
	    BY SECTION;
	RUN;
ODS HTML CLOSE;


ODS HTML FILE ="/home/u64459399/Past Practical Test 2025 Semester 2/Test 1 - 1 to 5 Aug 2025/Question.html";
	PROC MEANS 
		DATA = GRADE MIN MAX MEDIAN;
	    BY SECTION;
	    VAR SCORE;
	    CLASS STATUS YEAR;
	    TITLE "Final Exam Scores for Student Status and Year of Graduation";
	RUN;
ODS HTML CLOSE;
