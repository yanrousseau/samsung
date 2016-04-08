# Aggregation of Samsung S smartphone data using R - README.md

## Data description
This function combines data files collected from Samsung Galaxy S II smartphones and aggregates data by activity (walking, walking upstairs, walking downstairs, sitting, standing, or laying) and by subject (30 participants aged between 19-48 years took part in data collection). During the experiment, each participant was wearing the aforementioned smartphone devide on his/her waist. The accelerometer and gyroscope embedded in the smartphonecaptured triaxial linear acceleration and angular velocity at a constant rate of 50Hz. The dataset has been randomly partitioned into training data (70% of the volunteers) and test data (the remaining 30% of the volunteers).

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

## Running the script
The script must be placed in the working directory, which also contains data files. A tidy file is returned in the same directory as the input data. To run the script, set the working directory and enter "run_analysis.R()" in the R console. The file produced will be called 'tidy.txt'.
