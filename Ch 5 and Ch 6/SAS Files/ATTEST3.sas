*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;
DATA WEIGHT;
INPUT WBEFORE WAFTER;
DATALINES;
200 185
175 154
188 176
198 193
197 198
310 275
245 224
202 188
;
RUN;

ODS HTML;
PROC PRINT DATA = WEIGHT;
RUN;
ODS HTML CLOSE;


ODS HTML;
ODS GRAPHICS ON;
PROC TTEST DATA = WEIGHT;
PAIRED WBEFORE*WAFTER;
TITLE 'Paired t-test Example';
RUN;
ODS GRAPHICS OFF;
ODS HTML CLOSE;
