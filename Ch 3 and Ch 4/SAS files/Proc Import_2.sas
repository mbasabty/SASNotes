filename data = '/folders/myfolders/Library/EXAMPLE.xls';

proc import datafile = data
	dbms = xlsx
	out = SAS_LIB.EXAMPLE;
	getnames = yes;
run;

ods html;
proc print data = SAS_LIB.EXAMPLE;
run;
ods html close;