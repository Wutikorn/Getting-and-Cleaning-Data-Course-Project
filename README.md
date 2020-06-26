# Getting-and-Cleaning-Data-Course-Project


Based on UCI HAR Dataset

1.  X_train and X_test is row-binded together
2.  y_train and y_test is row-binded together
3.  subject_train and subject_test is row-binded together
4.  Header names for X are read from UCI HAR Dataset/features.txt
5.  Activity number in Y is changed to activity name based on activity_labels.txt
6.  activity_stats is the result of column-binded of subject, Y, X after above modification
7.  Column "subject" is renamed to "Subject#" and "Y" to "Activity"
8.  activity_stats is saved into "activity_stats.txt"
9.  per_activity_stats is created based on activity_stats which is splitted into group by Subject# and Activity
10. ColMeans is applied to per_activity_stats on numeric column and is saved as per_activity_stats_mean
11. per_activity_stats_mean is saved into file "per_activity_stats_mean.txt"




==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.


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

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
