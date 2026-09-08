*******************************************************
* From SAS ESSENTIALS, Jossey Bass/Wiley              *
* (C) 2010 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;


/*=====================================================
  1. BASIC PROC FREQ
=======================================================*/

ODS HTML;

PROC FREQ
     /* PROC FREQ creates frequency tables.
        
        It counts how many times each value/category
        occurs in a variable.
        
        Although the comment in the original code says
        "quantitative data", PROC FREQ is most commonly
        useful for categorical/discrete variables.
        
        Examples:
        - Gender: Male, Female
        - Status: Active, Inactive
        - GP: GP1, GP2, GP3
        
        PROC FREQ can show:
        - Frequency = number of observations
        - Percent = percentage of observations
        - Cumulative Frequency
        - Cumulative Percent
     */

     DATA="/home/u64459399/Chapter 7 - Analysing Counts and tables/somedata.sas7bdat";

     /* TABLES GP tells SAS to create a frequency table
        for the variable GP.
        
        SAS will count each different value of GP.
     */
     TABLES GP;
     TITLE 'Simple Example of PROC FREQ';

RUN;

ODS HTML CLOSE;


/*=====================================================
  2. PROC FREQ USING ORDER=FREQ
=======================================================*/

ODS HTML;

PROC FREQ
     DATA="/home/u64459399/Chapter 7 - Analysing Counts and tables/somedata.sas7bdat"
     
     /* ORDER = FREQ means:
        
        Sort the categories from the MOST FREQUENT
        to the LEAST FREQUENT.
        In other words:        
        Highest count
              ↓
        Lowest count        
        Example:
        
        Status       Frequency
        -----------------------
        Active          50
        Pending         30
        Inactive        20
        
        The category with the largest frequency appears
        first.
     */
     ORDER = FREQ;
     TABLES STATUS;
     TITLE 'Example of PROC FREQ Using ORDER = FREQ';

RUN;


/*=====================================================
  3. PROC FREQ USING ORDER=FORMATTED
=======================================================*/

PROC FREQ
     DATA = "/home/u64459399/Chapter 7 - Analysing Counts and tables/somedata.sas7bdat"

     /* ORDER = FORMATTED means SAS orders the categories
        according to their FORMATTED values.
        
        A format can change how a value is DISPLAYED
        without changing the actual value stored in
        the dataset.
        
        Example:
        Suppose STATUS is stored as:        
             1 = Active
             2 = Inactive
             3 = Pending
        
        A format could display:        
             1 -> Active
             2 -> Inactive
             3 -> Pending
        
        ORDER = FORMATTED uses these displayed/format
        values when determining the order.
        
        IMPORTANT:
        ORDER = FORMATTED does NOT mean "sort by frequency".
        It means sort according to the formatted/displayed
        category values.
        
        For character formatted values, this may result
        in alphabetical ordering.
        
        Example:        
        Active
        Inactive
        Pending
     */
     ORDER = FORMATTED;
     TABLES STATUS;
     TITLE 'Example of PROC FREQ Using ORDER = FORMATTED';

RUN;


/*=====================================================
  4. PROC FREQ USING ORDER=DATA
=======================================================*/

PROC FREQ
     DATA = "/home/u64459399/Chapter 7 - Analysing Counts and tables/somedata.sas7bdat"

     /* ORDER = DATA means:
        
        Display the categories in the order in which
        SAS first encounters them in the dataset.     
        Example:
        
        Suppose the STATUS values appear in the dataset
        in this order:
        
        Row 1: Pending
        Row 2: Active
        Row 3: Inactive
        Row 4: Active
        Row 5: Pending
        
        The first time SAS encounters each category is:
        
        1. Pending
        2. Active
        3. Inactive
        
        Therefore, PROC FREQ with ORDER = DATA displays:
        
        Pending
        Active
        Inactive
        
        IMPORTANT:
        ORDER = DATA is NOT chronological ordering unless
        the data itself is arranged chronologically.
        
        It simply follows the order in which the values
        are first encountered in the input dataset.
     */
     ORDER = DATA;
     TABLES STATUS;
     TITLE 'Example of PROC FREQ Using ORDER = DATA';

RUN;
ODS HTML CLOSE;


/*=====================================================
  5. PROC PRINT
=======================================================*/

ODS HTML;

PROC PRINT
     /* PROC PRINT displays the observations/rows of
        the dataset.Unlike PROC FREQ, PROC PRINT does not primarily
        count categories.It is useful for looking at the actual data,
        row by row.
     */
     DATA="/home/u64459399/Chapter 7 - Analysing Counts and tables/somedata.sas7bdat";

RUN;

ODS HTML CLOSE;
