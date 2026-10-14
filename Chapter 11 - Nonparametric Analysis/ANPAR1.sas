*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

/* This example illustrates how to compare two independent groups
using Non-parametric Methods. 
In it, observations from two brands of fertilizer are compared to 
determine if one provides better overall growth (Measured by Height)
than the other. We have used this dataset in ATTEST2. */

/* 
A biologist experimenting with plant growth designs 
an experiment in which 15 seeds are randomly assigned to one of two fertilizers
and the height of the resulting plant is measured after two weeks.
She wants to know if one of the fertilizers provides more vertical growth than the other.

Testing if there is a difference*/

DATA FERTILIZER;
INPUT BRAND $ HEIGHT;
DATALINES;
   A   20.00
   A   23.00
   A   32.00
   A   24.00
   A   25.00
   A   28.00
   A   27.50
   B   25.00
   B   46.00
   B   56.00
   B   45.00
   B   46.00
   B   51.00
   B   34.00
   B   47.50
;
Run;

ODS HTML; 						/* Opens HTML output */
	PROC NPAR1WAY
	     DATA = fertilizer 			/* Specifies the fertilizer dataset */
	     		WILCOXON;          	/* Requests a nonparametric rank test */
	     CLASS BRAND; 				/* Categorical variable identifying fertilizer brands */
	     VAR HEIGHT;  				/* Continuous variable measuring plant height */
	     EXACT; 					/* Requests exact p-value calculations for supported statistics */
	     TITLE 'Compare two groups using NPAR1WAY'; /* Sets the output title */
	RUN;
ODS HTML CLOSE; 				/* Closes HTML output */

/*
INTERPRETATION OF RESULTS:

- Brand A has a mean rank of 4.50.
- Brand B has a mean rank of 11.0625.
- Brand B has the higher mean rank, suggesting that its plants tend to be taller.
- The exact two-sided p-value is 0.0025.

	H0: There is no significant difference in plant height
	    between fertilizer Brands A and B.
	    The distributions of plant height are equal.
	
	H1: There is a significant difference in plant height
	    between fertilizer Brands A and B.
	    The distributions of plant height are different.
	
	Significance level: alpha = 0.05
	
	Decision rule:
	- If p-value < 0.05, reject H0.
	- If p-value >= 0.05, fail to reject H0.
	
- Since 0.0025 < 0.05, reject the null hypothesis.
- Conclusion: There is a statistically significant difference in plant height
  between fertilizer Brands A and B. Brand B tends to produce taller plants.
*/