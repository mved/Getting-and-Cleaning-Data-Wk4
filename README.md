# Getting-and-Cleaning-Data-Wk4

-Unzip the source ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )
 
into a folder on your local drive, E.g:

C:/Users/<YourName>/Documents/R/Coursera/data/

-Put run_analysis.R to C:/Users/<YourName>/Documents/R/data/
and then run script: source("run_analysis.R")

-The script will run the R script, it will read the dataset and write the file:
signals_Aggby_subject.txt
under the same folder shown below:
C:/Users/<YourName>/Documents/R/Coursera/data/

To read the data from R use the below or download the file to view. 
File : signals_all_subject.txt
-Use data <- read.table("signals_Aggby_subject.txt") to read the latter.

The data in signals_all_subject.txt is the tidy data set which is agreegated by Subject and Activity. 
