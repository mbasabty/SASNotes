/*AN EMPLOYEE WANTS TO BE ABLE TO PREDICT HOW WELL APPLICANTS
WILL DO ON THE JOB ONCE THEY ARE HIRED. HE DEVISES FOUR TESTS THAT
HE THINKS WILL MEASURE THE SKILLS REQUIRED FOR THE JOB. TEN PROSPECTS 
ARE SELECTED AT RANDOM FROM A GROUP OF APPLICANTS AND GIVEN THE FOUR TESTS. 
THEN THEY ARE GIVEN A JOB PROFICEINCY SCORE (jobscore) BY A SUPERVISOR
WHO OBSERVES THEIR WORK.*/

DATA JOB;
INPUT SUBJECT $ TEST1 TEST2 TEST3 TEST4 JOBSCORE;
CARDS;
1         75     100      90      88      78 
2         51      85      88      89      71 
3         99      96      94      93      85 
4         92     106      84      84      67 
5         90      89      83      77      69 
6         67      77      83      73      65 
7        109      67      71      65      50 
8         94     112     105      91     107 
9        105     110      99      95      96 
10         74     102      88      69      63 
	;
RUN;

ODS HTML;
	PROC REG 
	    DATA = JOB;
		MODEL JOBSCORE = TEST1 TEST2 TEST3 TEST4;
						
	    TITLE 'Job Score Analysis using PROC REG';
	RUN;
ODS HTML CLOSE;


ODS HTML;
	PROC REG 
	    DATA = JOB;
		FORWARD: MODEL JOBSCORE = TEST1 
								  TEST2 
								  TEST3 
								  TEST4 /*we end up with test 3*/
										/ SELECTION = FORWARD SLENTRY = 0.05;
	run;
	
	PROC REG 
		DATA = JOB;
		BACKWARD: MODEL JOBSCORE = TEST1 
								   TEST2 
								   TEST3 
								   TEST4  /*we end up with test 3*/
										/ SELECTION = BACKWARD SLSTAY=0.05;
	run;
	
	PROC REG 
		DATA = JOB;	
		STEPWISE: MODEL JOBSCORE = TEST1 
								   TEST2 
								   TEST3 
								   TEST4  /*we end up with test 3*/
										/ SELECTION = STEPWISE SLENTRY = 0.05 
															   SLSTAY  = 0.05;
	RUN;
ODS HTML CLOSE;

/*
  More depth, if p > 0.05 we remove that particular variable from the model.

  In order for our estimated multiple linear regression model to be at its peak and
  to produce its best prediction we have to remove the varibles it the p value that
  is greater than 0.05
  
*/
