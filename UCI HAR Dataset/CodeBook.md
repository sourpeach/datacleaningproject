*Detailed description of run_analysis.R script:

1. Read the following tables into R.
  X_test.txt
  X_train.txt
  features.txt
  y_test.txt
  y_train.txt
  subject_test.txt
  subject_train.txt
  activity_labels.txt

2. Match activity labels (descriptive activity names) to activity code in y_test.txt and y_train.txt
  1 WALKING
  2 WALKING_UPSTAIRS
  3 WALKING_DOWNSTAIRS
  4 SITTING
  5 STANDING
  6 LAYING

3. Name the column names for the data set acquired from step 2

4. Extract all features that contained means or standard deviation 

5. Merge X_test.txt and X_train.txt and eliminated features that did not contain mean or standard deviation.

6. Created a subset that had means or each variable for every activity and subject. 