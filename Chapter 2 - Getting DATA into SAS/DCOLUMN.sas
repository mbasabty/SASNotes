*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA MYDATA; * creating a new data set;
	INPUT 
		ID $ 1 
		SBP 2-4 
		DBP 5-7 
		GENDER $ 8 
		AGE 9-10 
		WT 11-13; * the names of the fields in the data set;
					* and as well as the number of characters to take from datalines for each field;
	DATALINES;
	1120 80M15115
	2130 70F25180
	3140100M89170
	4120 80F30150
	5125 80F20110
	;
RUN;

ods html FILE = "/home/u64459399/Chapter 2 - Getting DATA into SAS/DCol.HTML";
	PROC MEANS 
		data = work.mydata;
	RUN;
ods html close;