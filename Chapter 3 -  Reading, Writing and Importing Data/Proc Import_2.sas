filename data "/home/u64459399/Chapter 3 -  Reading, Writing and Importing Data/EXAMPLE.xls" ;

proc import 
	datafile	= data
	dbms		= xls
	out			= SAS_LIB.EXAMPLE;
	getnames 	= yes;
run;

ods html FILE = "/home/u64459399/Chapter 3 -  Reading, Writing and Importing Data/Example.html";
	proc print 
		data = SAS_LIB.EXAMPLE;
	run;
ods html close;