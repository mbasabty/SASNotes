data weight;
input treatment loss;
datalines;
1 1.0
1 3.0
1 -1.0
1 1.5
1 0.5
1 3.5
2 4.5
2 6.0
2 3.5
2 7.5
2 7.0
2 6.0
2 5.5
3 1.5
3 -2.5
3 -0.5
3 1.0
3 0.5
;
run;

ods html;
proc print data = Work.weight;
run;
ods html close;