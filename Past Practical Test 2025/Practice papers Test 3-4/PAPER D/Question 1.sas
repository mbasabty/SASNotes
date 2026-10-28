/*Use an iterative DO loop to convert temperatures from 
  Celsius to Fahrenheit using the formula FAHRENHEIT = CELSIUS * 9 / 5 + 32. 
  CELSIUS must start at -10 and go up to 40 in steps of 10. 
  Use the temporary dataset name TEMPS.
  
1.1 Write the SAS code that creates the dataset and prints it. (5)
1.2 How many observations does TEMPS contain? 
	6 observations
*/

DATA TEMPS;
	DO CELSIUS = -10 TO 40 BY 10;                 
	   FAHRENHEIT = CELSIUS * 9 / 5 + 32;         
	   OUTPUT;                                    
	END;                                          
RUN;
	
PROC PRINT 
	DATA = TEMPS;                         
RUN;
