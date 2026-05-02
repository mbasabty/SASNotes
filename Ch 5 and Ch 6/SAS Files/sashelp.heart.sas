ods html;
proc print data = sashelp.heart;
run;

ods html;
proc sgplot data  = sashelp.heart;
dot cholesterol;

proc sgplot data = sashelp.heart;
hbar ageatstart;

proc sgplot data = sashelp.heart;
hbox ageatstart;

proc sgplot data = sashelp.heart;
histogram ageatdeath;

proc sgplot data = sashelp.heart;
needle x = height y= weight;

proc sgplot data = sashelp.heart;
scatter x = height y = weight;

proc sgplot data = sashelp.heart;
vbar smoking;

proc sgplot data = sashelp.heart;
vbox ageatstart;
run;
ods html close;
