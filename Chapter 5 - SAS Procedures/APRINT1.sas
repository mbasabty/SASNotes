*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

ods html file="/home/u64459399/Chapter 5 - SAS Procedures/somedata.html";
	proc print 																	
	    data="/home/u64459399/Chapter 5 - SAS Procedures/somedata.sas7bdat"
	    N = 'Number of Subjects is: ' 											/* N option: displays the number of observations with a custom label */
	    Obs = 'Subjects'; 														/* OBS option: labels the observation column (row numbers) */
		sum TIME1 TIME2 TIME3 TIME4; 											/* SUM statement: calculates and displays totals for these variables */
		title 'PROC PRINT Example'; 											/* TITLE statement: adds a title at the top of the output */
	run;
ods html close;
