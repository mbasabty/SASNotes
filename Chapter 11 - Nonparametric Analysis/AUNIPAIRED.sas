*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

DATA WEIGHT;
INPUT WBEFORE WAFTER;
* Calculate WLOSS in the DATA step *;
WLOSS = WBEFORE - WAFTER;  
DATALINES;
200 190
175 154
188 176
198 193
197 198
310 240
245 204
202 178
;
Run;

/* Open the HTML output destination to display results in HTML format */
ODS HTML;
	PROC UNIVARIATE 	/* Run PROC UNIVARIATE to calculate descriptive statistics and perform statistical tests */
		DATA = WEIGHT;
	    VAR WLOSS;										  /* Analyze the weight loss variable */
	    TITLE 'Paired comparison using PROC UNIVARIATE';  /* Add a descriptive title to the output */
	RUN;
ODS HTML CLOSE; /* Close the HTML output destination */

/*
    Tests for Location: Mu0 = 0
    Student's t-test: t = 2.788474, p-value = 0.0270
    Sign test		: M = 3, p-value = 0.0703
    Signed Rank test: S = 17, p-value = 0.0156

    H0: The probability of a positive difference is the same
        as that of a negative difference.

    Ha: The probability of a positive difference is different
        from that of a negative difference.

    Since the Signed Rank p-value (0.0156) < 0.05,
    we reject H0.

    Therefore, there is statistically significant evidence
    that people have been losing weight after treatment.

    Note: The Sign test p-value (0.0703) > 0.05, so we fail
    to reject H0 using the Sign test.
*/