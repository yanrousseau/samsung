# Aggregation of Samsung S smartphone data using R

## Description
This function combines data files collected from Samsung Galaxy X smartphones and aggregates data by activity (walking, walking upstairs, walking downstairs, sitting, standing, or laying) and by subject (30 participants took part in data collection).

## Procedure
The script must be placed in the working directory, which also contains data files. A tidy file is returned in the same directory as the input data. The structure of the file system must be the following:

## Files

run_analysis.R -> R script

tidy.txt -> output file

activity_labels.txt -> data file: activities

features.txt -> data file: variables derived from collection

test/subject_test.txt -> data file: subject    associated with the test set

test/X_test.txt -> data file: values     associated with the test set

test/y_test.txt -> data file: activities associated with the test set

train/subject_train.txt -> data file: subject    associated with the training set

train/X_train.txt -> data file: values     associated with the training set

train/y_train.txt -> data file: activities associated with the training set

## Variables
Below, 'mean' represents the average value for the combination of one activity and one subject whereas 'std' refers to the standard deviation. X,Y,Z refers to the triaxial components of a given variable. The variables are the following:

Activity: one of the six activites considered

Subject: one of the participants in the study

tBodyAcc
tGravityAcc
tBodyAccJerk
tBodyGyro
tBodyGyroJerk
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc
fBodyAccJerk
fBodyAccMag
fBodyBodyAccJerkMag
fBodyBodyGyroMag
fBodyBodyGyroJerkMag
