/*
The population of a town is 12 000 and grows by 3% every year. 
Use a DO WHILE loop to find how many years it takes for the population 
to exceed 20 000. Use the temporary dataset name TOWN.

1.1 Write the SAS code that produces a table of the population for each year. (5)
1.2 After how many years does the population exceed 20 000?
	
	It exceed the population after 18 years(1)
*/

DATA TOWN;
	Total_Population = 12000;
	Rate = 0.03+1;
	Years = 0;
	
	DO UNTIL (Total_Population>=20000);
		Total_Population = Total_Population*RATE;
		Years = Years + 1;
		OUTPUT;
	END;
RUN;

ODS HTML;
	PROC PRINT	
		DATA = TOWN;
	RUN;
ODS HTML CLOSE;

/*IT GIVE YOU ONE LINE*/

DATA TOWN;
   POP = 12000;                      /* 1 */
   YEAR = 0;                         /* 1 */
  
   DO WHILE (POP <= 20000);          /* 1 */
      POP = POP * 1.03;              /* 1 */
      YEAR + 1;
      OUTPUT;                        /* 1 */
   END;
RUN;

PROC PRINT 
	DATA = TOWN;
RUN;



