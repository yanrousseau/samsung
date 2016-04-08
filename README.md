# Aggregation of Samsung S smartphone data using R

## Description
This function combines data files collected from Samsung Galaxy X smartphones and aggregates data by activity (walking, walking upstairs, walking downstairs, sitting, standing, or laying) and by subject (30 participants took part in data collection).

## Procedure
The script must be placed in the working directory, which also contains data files. A tidy file is returned in the same directory as the input data. To run the script, set the working directory and enter "run_analysis.R()" in the R console. The file produced will be called 'tidy.txt'.

## Files
The working directory must contain the following files:

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
The name of each of the variables summarized in the tidy file is explained in this section. The 'mean' represents the average value for the combination of one activity and one subject whereas 'std' refers to its standard deviation. x,y,z refer to the triaxial components of a given variable. The prefix 't' identifies time domain signals at a frequency of 50 Hz and the prefix 'f' identifies the variables produced with a Fast Fourier Transformn on some of these signals. The measurement instruments were an accelerometer ('acc') and a gyroscope ('gyro'). The characters 'Jerk' correspond to Jerk signals, i.e. the result of body linear acceleration and angular velocity derived in time. Finally, a variable with the suffix 'Mag' corresponds to the the magnitude of the 3D signal, calculated using the Euclidean norm. The columns present in the tidy file produced are:

activity: one of the six activites considered

subject: one of the participants in the study

t-body-acc-xyz

t-gravity-acc-xyz

t-body-acc-jerk-xyz

t-body-gyro-xyz

t-body-gyro-jerk-xyz

t-body-acc-mag

t-gravity-acc-mag

t-body-acc-jerk-mag

t-body-gyro-mag

t-body-gyro-jerk-mag

f-body-acc-xyz

f-body-acc-jerk-xyz

f-body-gyro-xyz

f-body-acc-mag

f-body-body-acc-jerk-mag

f-body-body-gyro-mag

f-body-body-gyro-jerk-mag
