data weight;
input treatment loss @@;
datalines;
1 1 3 -1 1.5 0.5 3.5
2 4.5 6 3.5 7.5 7 6 5.5
3 1.5 -2.5 -0.5 1 0.5
;
run;

ods html;
proc print data = Work.weight;
run;
ods html close;