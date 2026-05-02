filename data "/folders/myfolders/Lecture 2 - Getting Data into SAS/Global Financial Performance.xlsx";

proc import datafile = data
	dbms = xlsx
	out = Work.Global_Financial_Performance;
	getnames = yes;
run;

ods html;
proc print data = Work.Global_Financial_Performance;
run;
ods html close;