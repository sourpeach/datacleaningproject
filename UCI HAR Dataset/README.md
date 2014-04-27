*Cleaning and tidying up data

**Following instructions are for Mac users only.

Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Download the above file and save it to your local drive.

Unzip said drive to a directory you will be working on named 'datacleaningproject.
ie. "/Users/yourname/datacleaningproject/"

Run the run_analysis.R script.

Type in console:
write.table(finalmerge, "Cleandata.csv", sep =",")
write.table(subtidyset, "Tidydata.csv", sep =",")

to obtain cleaned data from raw data and tidy data, a subset of data from clean data, respectively. 

Following files should be located in the same directory as the original directory (ie."/Users/yourname/datacleaningproject/" )
"Cleandata.csv"
"Tidydata.csv"