# Getting-and-Cleaning-Data-Course-Project


Based on UCI HAR Dataset (Human Activity Recognition Using Smartphones Dataset)

1.  X_train and X_test is row-binded together
2.  y_train and y_test is row-binded together
3.  subject_train and subject_test is row-binded together
4.  Header names for X are read from UCI HAR Dataset/features.txt
5.  Activity number in Y is changed to activity name based on activity_labels.txt
6.  activity_stats is the result of column-binded of subject, Y, X after above modification
7.  Column "subject" is renamed to "Subject#" and "Y" to "Activity"
8.  activity_stats is saved into "activity_stats.txt"
9.  activity_stats is then be grouped by Subject# and Activity 
10. per_activity_stats_mean is created based on mean of activity_stats
11. per_activity_stats_mean is saved into file "per_activity_stats_mean.txt"



The new dataset includes the following files:
=========================================

- 'README.md'

- 'activity_stats.txt': This is the combined dataset of X, Y and subject for both train and test dataset.  Only mean and std of each signal is shown.

- 'per_activity_stats_mean.txt' This is based on 'activity_stats.txt', but show average value per subject per activity

- 'features_info.txt' New selected features which only has mean and std of each signal.


The old dataset includes the following files:
=========================================

- 'UCI HAR Dataset\README.txt'

- 'UCI HAR Dataset\features_info.txt': Shows information about the variables used on the feature vector.

- 'UCI HAR Dataset\features.txt': List of all features.

- 'UCI HAR Dataset\activity_labels.txt': Links the class labels with their activity name.

- 'UCI HAR Dataset\train/X_train.txt': Training set.

- 'UCI HAR Dataset\train/y_train.txt': Training labels.

- 'UCI HAR Dataset\test/X_test.txt': Test set.

- 'UCI HAR Dataset\test/y_test.txt': Test labels.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

Features: 
======

"x"
"1" "Subject#"
"2" "Activity"
"3" "tBodyAcc-mean()-X"
"4" "tBodyAcc-mean()-Y"
"5" "tBodyAcc-mean()-Z"
"6" "tBodyAcc-std()-X"
"7" "tBodyAcc-std()-Y"
"8" "tBodyAcc-std()-Z"
"9" "tGravityAcc-mean()-X"
"10" "tGravityAcc-mean()-Y"
"11" "tGravityAcc-mean()-Z"
"12" "tGravityAcc-std()-X"
"13" "tGravityAcc-std()-Y"
"14" "tGravityAcc-std()-Z"
"15" "tBodyAccJerk-mean()-X"
"16" "tBodyAccJerk-mean()-Y"
"17" "tBodyAccJerk-mean()-Z"
"18" "tBodyAccJerk-std()-X"
"19" "tBodyAccJerk-std()-Y"
"20" "tBodyAccJerk-std()-Z"
"21" "tBodyGyro-mean()-X"
"22" "tBodyGyro-mean()-Y"
"23" "tBodyGyro-mean()-Z"
"24" "tBodyGyro-std()-X"
"25" "tBodyGyro-std()-Y"
"26" "tBodyGyro-std()-Z"
"27" "tBodyGyroJerk-mean()-X"
"28" "tBodyGyroJerk-mean()-Y"
"29" "tBodyGyroJerk-mean()-Z"
"30" "tBodyGyroJerk-std()-X"
"31" "tBodyGyroJerk-std()-Y"
"32" "tBodyGyroJerk-std()-Z"
"33" "tBodyAccMag-mean()"
"34" "tBodyAccMag-std()"
"35" "tGravityAccMag-mean()"
"36" "tGravityAccMag-std()"
"37" "tBodyAccJerkMag-mean()"
"38" "tBodyAccJerkMag-std()"
"39" "tBodyGyroMag-mean()"
"40" "tBodyGyroMag-std()"
"41" "tBodyGyroJerkMag-mean()"
"42" "tBodyGyroJerkMag-std()"
"43" "fBodyAcc-mean()-X"
"44" "fBodyAcc-mean()-Y"
"45" "fBodyAcc-mean()-Z"
"46" "fBodyAcc-std()-X"
"47" "fBodyAcc-std()-Y"
"48" "fBodyAcc-std()-Z"
"49" "fBodyAcc-meanFreq()-X"
"50" "fBodyAcc-meanFreq()-Y"
"51" "fBodyAcc-meanFreq()-Z"
"52" "fBodyAccJerk-mean()-X"
"53" "fBodyAccJerk-mean()-Y"
"54" "fBodyAccJerk-mean()-Z"
"55" "fBodyAccJerk-std()-X"
"56" "fBodyAccJerk-std()-Y"
"57" "fBodyAccJerk-std()-Z"
"58" "fBodyAccJerk-meanFreq()-X"
"59" "fBodyAccJerk-meanFreq()-Y"
"60" "fBodyAccJerk-meanFreq()-Z"
"61" "fBodyGyro-mean()-X"
"62" "fBodyGyro-mean()-Y"
"63" "fBodyGyro-mean()-Z"
"64" "fBodyGyro-std()-X"
"65" "fBodyGyro-std()-Y"
"66" "fBodyGyro-std()-Z"
"67" "fBodyGyro-meanFreq()-X"
"68" "fBodyGyro-meanFreq()-Y"
"69" "fBodyGyro-meanFreq()-Z"
"70" "fBodyAccMag-mean()"
"71" "fBodyAccMag-std()"
"72" "fBodyAccMag-meanFreq()"
"73" "fBodyBodyAccJerkMag-mean()"
"74" "fBodyBodyAccJerkMag-std()"
"75" "fBodyBodyAccJerkMag-meanFreq()"
"76" "fBodyBodyGyroMag-mean()"
"77" "fBodyBodyGyroMag-std()"
"78" "fBodyBodyGyroMag-meanFreq()"
"79" "fBodyBodyGyroJerkMag-mean()"
"80" "fBodyBodyGyroJerkMag-std()"
"81" "fBodyBodyGyroJerkMag-meanFreq()"


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
