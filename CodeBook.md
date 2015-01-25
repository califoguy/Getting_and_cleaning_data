Data Source for the test is based on the "Human Activity Recognition Using Smartphone Data Set".

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


"Subject" - is represented as numerical value of who carried out the experiment. 

"Activity" - Indicator of an action.

The following are the labels for activity. These are represented as corresponding rows in the data set. The data measurements are spread across the following values.

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

The following are measurements taken which are means and standard deviations on X Y and Z coordinates.
For example, tBodyAcc is representing mean and standard deviations across X Y and Z and is time bound (indicated with a t). Similarly, other measurements are drawn such as gravity, gyro and jerk for each. The f indicates frequency domain.

"tBodyAcc-mean-X"

"tBodyAcc-mean-Y" 

"tBodyAcc-mean-Z" 

"tBodyAcc-std-X" 

"tBodyAcc-std-Y" 

"tBodyAcc-std-Z" 

"tGravityAcc-mean-X" 

"tGravityAcc-mean-Y" 

"tGravityAcc-mean-Z" 

"tGravityAcc-std-X" 

"tGravityAcc-std-Y" 

"tGravityAcc-std-Z" 

"tBodyAccJerk-mean-X" 

"tBodyAccJerk-mean-Y" 

"tBodyAccJerk-mean-Z" 

"tBodyAccJerk-std-X" 

"tBodyAccJerk-std-Y" 

"tBodyAccJerk-std-Z" 

"tBodyGyro-mean-X" 

"tBodyGyro-mean-Y" 

"tBodyGyro-mean-Z" 

"tBodyGyro-std-X" 

"tBodyGyro-std-Y" 

"tBodyGyro-std-Z" 

"tBodyGyroJerk-mean-X" 

"tBodyGyroJerk-mean-Y" 

"tBodyGyroJerk-mean-Z" 

"tBodyGyroJerk-std-X" 

"tBodyGyroJerk-std-Y" 

"tBodyGyroJerk-std-Z" 

"tBodyAccMag-mean" 

"tBodyAccMag-std" 

"tGravityAccMag-mean" 

"tGravityAccMag-std" 

"tBodyAccJerkMag-mean" 

"tBodyAccJerkMag-std" 

"tBodyGyroMag-mean" 

"tBodyGyroMag-std" 

"tBodyGyroJerkMag-mean" 

"tBodyGyroJerkMag-std" 

"fBodyAcc-mean-X" 

"fBodyAcc-mean-Y" 

"fBodyAcc-mean-Z" 

"fBodyAcc-std-X" 

"fBodyAcc-std-Y" 

"fBodyAcc-std-Z" 

"fBodyAccJerk-mean-X" 

"fBodyAccJerk-mean-Y" 

"fBodyAccJerk-mean-Z" 

"fBodyAccJerk-std-X" 

"fBodyAccJerk-std-Y" 

"fBodyAccJerk-std-Z" 

"fBodyGyro-mean-X" 

"fBodyGyro-mean-Y" 

"fBodyGyro-mean-Z" 

"fBodyGyro-std-X"

"fBodyGyro-std-Y"

"fBodyGyro-std-Z"


The following are mean and standard deviations measurements vectors instead of at X Y or Z.

"fBodyAccMag-mean" 

"fBodyAccMag-std" 

"fBodyBodyAccJerkMag-mean" 

"fBodyBodyAccJerkMag-std" 

"fBodyBodyGyroMag-mean" 

"fBodyBodyGyroMag-std" 

"fBodyBodyGyroJerkMag-mean" 

"fBodyBodyGyroJerkMag-std"

The final tidy output file contains 180 rows with with a combination of 30 subjects across 6 activities.
