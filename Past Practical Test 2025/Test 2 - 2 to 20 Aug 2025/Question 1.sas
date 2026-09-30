DATA CLOVER;
   INPUT STRAIN $ NITROGEN @@;
   DATALINES;
3DOK1  19.4 3DOK1  32.6 3DOK1  27.0 3DOK1  32.1 3DOK1  33.0
3DOK5  17.7 3DOK5  24.8 3DOK5  27.9 3DOK5  25.2 3DOK5  24.3
3DOK4  17.0 3DOK4  19.4 3DOK4   9.1 3DOK4  11.9 3DOK4  15.8
3DOK7  20.7 3DOK7  21.0 3DOK7  20.5 3DOK7  18.8 3DOK7  18.6
3DOK13 14.3 3DOK13 14.4 3DOK13 11.8 3DOK13 11.6 3DOK13 14.2
COMPOS 17.3 COMPOS 19.4 COMPOS 19.1 COMPOS 16.9 COMPOS 20.8
;

ODS HTML;
	PROC ANOVA
		DATA = CLOVER;
		CLASS STRAIN;
		MODEL NITROGEN = STRAIN;
		MEANS STRAIN 
					 / 
					   TUKEY;
	RUN;
ODS CLOSE;

/* 

H0: u1 = u2 = u3
H1: ui ≠ uj for some i ≠ j 

The low p-value for the F-Test (0.0001) provides evidence for 
rejecting the null hypothesis that the means are equal. Therefore 
the means of at least two Strains are different. 

The larger p-value for the F-Test is evident for accepting the null hypothesis.

From the confidence limits provided by the simultaneous confidence 
table one can see that the means for Strains (3DOK1 and 3DOK5) are 
significantly different at the 0.05 significance level. 

The reason why one uses the TUKEY multiple comparison test is 
when the p-value is smaller than the significance level of 0.05 
then one can perform a multiple comparison test to determine which means are different.

*/