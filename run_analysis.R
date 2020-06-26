X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

#1. Combine train and test data
X <- rbind(X_train, X_test)
Y <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)

#remove used variables
rm(X_test)
rm(y_test)
rm(subject_test)
rm(X_train)
rm(y_train)
rm(subject_train)

#Add column name based on features.txt
features <- read.table("UCI HAR Dataset/features.txt")
features$V2
names(X) <- features$V2

#2. filter only column with mean and std
library(dplyr)
features <- tbl_df(features)
featureSelected <- filter(features, grepl('mean|std', V2))
X <- X[, featureSelected$V1]

#3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
activity_labels[Y$V1, ]$V2
Y <- activity_labels[Y$V1, ]$V2
activity_stats <- cbind(subject,Y,X)

#4. Appropriately labels the data set with descriptive variable names, only Y column is not descriptive.
names(activity_stats)[1:2] <- c("Subject#", "Activity")
write.table(activity_stats, file = "activity_stats.txt")


#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
per_activity_stats <- split(activity_stats, list(activity_stats$`Subject#`, activity_stats$Activity))
per_activity_stats_mean <- lapply(per_activity_stats, function ( x ) {colMeans(x[sapply(x, is.numeric)])})
write.table(per_activity_stats_mean, file = "per_activity_stats_mean.txt")


