*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA TABLE;
INPUT A B COUNT;   
DATALINES;
0 0 12
0 1 15
1 0 18 
1 1 3
;
RUN;

ODS TRACE ON;
	PROC FREQ 
	   DATA = TABLE;
	   WEIGHT COUNT;
	   TABLES A*B /CHISQ;
	   TITLE 'CHI-SQUARE ANALYSIS FOR A 2X2 TABLE';
	RUN;
ODS TRACE OFF;

/*use this to identify what the tables names are
  you go to the LOG to find the display names
Output Added:
 -------------
 Name:       CrossTabFreqs
 Label:      Cross-Tabular Freq Table
 Template:   Base.Freq.CrossTabFreqs
 Path:       Freq.Table1.CrossTabFreqs
 -------------
 
 Output Added:
 -------------
 Name:       ChiSq
 Label:      Chi-Square Tests
 Template:   Base.Freq.ChiSq
 Path:       Freq.Table1.ChiSq
 -------------
 
 Output Added:
 -------------
 Name:       FishersExact
 Label:      Fisher's Exact Test
 Template:   Base.Freq.ChisqExactFactoid
 Path:       Freq.Table1.FishersExact
 -------------*/


ODS HTML FILE = "/home/u64459399/Chapter 15 to 16 - Controlling output using ODS/FILES/Example5.html";
	ODS HTML SELECT CrossTabFreqs;
		PROC FREQ 
		   DATA = TABLE;
		   WEIGHT COUNT;
		   TABLES A*B /CHISQ;
		   TITLE 'CHI-SQUARE ANALYSIS FOR A 2X2 TABLE';
		RUN;
ODS HTML CLOSE;

/* we only want to view one table*/


