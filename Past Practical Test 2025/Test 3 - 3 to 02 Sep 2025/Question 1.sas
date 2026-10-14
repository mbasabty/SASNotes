DATA REACTION;
   INPUT STIM TIME @@;
   DATALINES;
1 1.94   1 1.94   1 2.92   1 2.92   1 2.92   1 2.92   1 3.27
1 3.27   1 3.27   1 3.27   1 3.70   1 3.70   1 3.74
2 3.27   2 3.27   2 3.27   2 3.70   2 3.70   2 3.74
;
RUN;

ODS HTML;
	PROC PRINT 
		DATA = REACTION;
	RUN;
ODS HTML CLOSE;

ODS HTML;
	ODS GRAPHICS ON;
		PROC NPAR1WAY 
			DATA = REACTION 
				   WILCOXON;
				   
			TITLE "COMPARE TWO INDEPENDENT GROUPS";
			CLASS STIM; 
			VAR TIME; 
			EXACT; /*We requesting for particular p-values*/
		RUN;
	ODS GRAPHICS OFF;
ODS HTML;

/*
Ho: The two types of stimulants have the same 
	distribution of reaction times (In minutes). 
	
Ha: The two types of stimulants do not have the 
	same distribution of reaction times (In minutes).
	
Conclusion: The Two sided p - value is 0.1054 which is >0.05, 
			therefore we do not reject Ha,suggesting that the 
			two groups have the same distribution and that 
			they come from the same population. 
			
			The two types of stimulants that the subjects were under 
			produces the same distribution of reaction times (In mInutes)
*/
