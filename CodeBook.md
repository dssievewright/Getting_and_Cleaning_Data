# Codebook for GCD_project.csv

There are three main objects of interest: Activity, Volunteer, and signal.  Each Volunteer completed every activity at least once.  Each time an activity was completed, the activity, volunteer, mean, and standard deviation of every signal was recorded.  There were in fact many more statistics recorded, (see the Original Data section below for more details) but we are only considering mean and standard deviation for now.

There are 33 signals in total:
* tBodyAcc-X
* tBodyAcc-Y
* tBodyAcc-Z
* tGravityAcc-X
* tGravityAcc-Y
* tGravityAcc-Z
* tBodyAccJerk-X
* tBodyAccJerk-Y
* tBodyAccJerk-Z
* tBodyGyro-X
* tBodyGyro-Y
* tBodyGyro-Z
* tBodyGyroJerk-X
* tBodyGyroJerk-Y
* tBodyGyroJerk-Z
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-X
* fBodyAcc-Y
* fBodyAcc-Z
* fBodyAccJerk-X
* fBodyAccJerk-Y
* fBodyAccJerk-Z
* fBodyGyro-X
* fBodyGyro-Y
* fBodyGyro-Z
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

For simplicity, we will refer to each signal as just "signal" in the following table since the Variable Description and the Values it takes on are the same for each signal.



Variable Name	| Variable Description	| Values
-------------	| -------------------	| -------
Activity	| This is a factor, each factor describes what the volunteer was doing at the time of measurement	| Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying
Volunteer	| This is an integer, each participant in the study is assigned to a unique value. 	| 1:30 
signal-mean()	| Average of the means of the signal grouped by Activity and Volunteer	| These are numeric values that were normalized and bounded within [-1,1]
signal-std()	| Average of the standard deviations of the signal grouped by Activity and Volunteer	| These are numeric values that were normalized and bounded within [-1,1]








## Original Data


The original data for this project (including the Variable Description below) can be found at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# 

The files contain much more information about the study and how each signal was calculated.

### References
 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
 

