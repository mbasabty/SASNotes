*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
/*This example illustrates how to compare three or more independent
groups using Non-Paramteric methods. The data are weight gains
of twenty-eight animals that are randomly assigned to four feed treatments with seven animals
to a treatment type. Suppose you want to test whether there are differences among the effects
of the different treatments. 
If you have reason to believe that the populations from which
these samples are taken are not normally distributed,
then the kruskal-wallis test would be approproiate.*/

DATA NPAR;
INPUT GROUP WEIGHT @@;
DATALINES;
1 50.8 1 57.0 1 44.6 1 51.7 1 48.2 1 51.3 1 49.0
2 68.7 2 67.7 2 66.3 2 69.8 2 66.9 2 65.2 2 62.0 
3 82.6 3 74.1 3 80.5 3 80.3 3 81.5 3 78.6 3 76.1
4 76.9 4 72.2 4 73.7 4 74.2 4 70.6 4 75.3 4 69.8
;
Run;

ODS HTML; 						/* Opens HTML output */
	PROC NPAR1WAY
	     DATA = npar 			/* Specifies the dataset */
	     WILCOXON;   			/* Requests the Wilcoxon/Kruskal-Wallis test */
	
	     CLASS GROUP; 			/* Categorical grouping variable */
	     VAR WEIGHT;  			/* Continuous response variable */
	
	     TITLE 'Four group analysis using NPAR1WAY'; /* Sets the output title */
	RUN;
ODS HTML CLOSE; 				/* Closes HTML output */

/*
	H0: There is no significant difference in weight gain among the
	    four feed treatments. The population distributions are equal.
	
	H1: There is a significant difference in weight gain among the
	    four feed treatments. At least one treatment differs.
	
	BACKGROUND:
	- 28 animals are randomly assigned to four feed treatments.
	- Each treatment has seven animals.
	- The response variable is weight gain.
	- The Kruskal-Wallis test is appropriate when comparing three or
	  more independent groups using a nonparametric method, particularly
	  when the normality assumption is unsuitable.
	
	SIGNIFICANCE LEVEL:
	- alpha = 0.05
	
	INTERPRETATION:
	- The p-value is < 0.0001.
	- Since p-value < 0.05, reject H0.
	
	CONCLUSION:
	There is a statistically significant difference in weight gain
	among the four feed treatments. At least one treatment differs
	from the others. Post-hoc tests are required to determine which
	specific treatments differ significantly.
*/
