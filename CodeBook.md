# Aggregation of Samsung S smartphone data using R - CodeBook.md

## Data description
This function combines data files collected from Samsung Galaxy S II smartphones and aggregates data by activity (walking, walking upstairs, walking downstairs, sitting, standing, or laying) and by subject (30 participants aged between 19-48 years took part in data collection). During the experiment, each participant was wearing the aforementioned smartphone devide on his/her waist. The accelerometer and gyroscope embedded in the smartphone captured triaxial linear acceleration and angular velocity at a constant rate of 50Hz. The dataset has been randomly partitioned into training data (70% of the volunteers) and test data (the remaining 30% of the volunteers).

## Data transformations
The following transformations were done on to transform the initial set of data files into a single tidy data file that is complete and contains the most relevant information:

1. Six data files were combined into a single one: train_X.txt, train_Y.txt, subject_train.txt, test_X.txt, test_Y.txt, subject_test.txt using the rbind and cbind functions.

2. With the exception of the columns including activity and suject information, the columns values not associated with a mean or standard deviation statistics were discarded.

3. Activity identifiers were replaced by a descriptive name.

4. Each column was assigned a descriptive variable name. The characters were transformed into lower case, parentheses were removed, and dashes were added to make the description easier to read.

5. The average of each column is calculated, after aggregating the rows by activity and subject. Note that the former first two columns were removed since no longer required. Finally, the script exports a tidy data set that is space delimited. 

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
