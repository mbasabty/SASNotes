DATA DIETS;
   INPUT DIET $ LOSS @@;
   DATALINES;
D1 4.5  D1 3.2  D1 5.1  D1 2.8  D1 4.0  D1 3.9
D2 6.2  D2 5.8  D2 7.1  D2 6.5  D2 5.5
D3 3.5  D3 4.2  D3 2.9  D3 3.1  D3 4.8  D3 3.7  D3 4.4
;
RUN;


/*Write SAS code to compare the three diets using a nonparametric test.*/
ODS HTML;
	ODS GRAPHICS ON;
		PROC NPAR1WAY
			DATA = diets
				   WILCOXON;
			CLASS DIET;
			VAR LOSS;	
		RUN;
	ODS GRAPHICS OFF;
ODS HTML CLOSE;

/*State the null and alternative hypotheses.

  HO : There is no difference among the distributions of the groups
  Ha : There are differences among the dsitribu5tion of the groups*
  
  Ho: The distribution of weight loss is the same for all three diets.
  Ha: The distributions are not all the same. /

/*Give a conclusion and state which diet has the highest mean rank.

  The Kruskal-Wallis chi-square is about 10.31 with 2 degrees of 
  freedom and the p-value is about 0.0058 (1), which is less than 
  0.05, so we reject Ho. Diet D2 has the highest mean rank 
  (about 16.0, compared with about 7.3 for D1 and 6.7 for D3)*/

