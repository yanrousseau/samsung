# Aggregation of Samsung S smartphone data using R - CodeBook.md

## Description
This function combines data files collected from Samsung Galaxy X smartphones and aggregates data by activity (walking, walking upstairs, walking downstairs, sitting, standing, or laying) and by subject (30 participants took part in data collection).

## Running the script
The script must be placed in the working directory, which also contains data files. A tidy file is returned in the same directory as the input data. To run the script, set the working directory and enter "run_analysis.R()" in the R console. The file produced will be called 'tidy.txt'.

## Data transformations
The following transformations were done to transform a set of data files into a single tidy data file:

1. Six data files were combined into a single one: train_X.txt, train_Y.txt, subject_train.txt, test_X.txt, test_Y.txt, subject_test.txt using the rbind and cbind functions.

2. With the exception of the columns including activity and suject information, the columns values not associated with a mean or standard deviation statistics were discarded.

3. Activity identifiers were replaced by a descriptive name.

4. Each column was assigned a descriptive variable name. The characters were transformed into lower case, parentheses were removed, and dashes were added to make the description easier to read.

5.The average of each column is calculated, after aggregating the rows by activity and subject. Note that the former first two columns were removed since no longer required. Finally, the script exports a tidy data set that is space delimited. 
