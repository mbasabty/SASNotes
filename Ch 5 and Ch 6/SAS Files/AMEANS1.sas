/*MEASUREMENTS OF SEVERAL CHILDREN*/

DATA CHILDREN;
INPUT WEIGHT HEIGHT AGE;
DATALINES;
64 57 8
71 59 10
53 49 6
67 62 11
55 51 8
58 50 8
77 55 10
57 48 9
56 42 10
51 42 6
76 61 12
68 57 9
;
RUN;

PROC MEANS DATA = CHILDREN;
TITLE 'PROC MEANS, simplest use';
RUN;

ods html;
proc print data = Children;
run;
ods html close;

PROC MEANS data = CHILDREN MAXDEC=2;
VAR WEIGHT HEIGHT;
TITLE 'PROC MEANS, limit decimals, specify variables';
RUN;

ods html;
proc print data = Children;
run;
ods html close;

PROC MEANS data = CHILDREN MAXDEC=2 N MEAN STDERR MEDIAN;
VAR WEIGHT HEIGHT;
TITLE 'PROC MEANS, specify statistics to report';
RUN;

ods html;
proc print data = Children;
run;
ods html close;