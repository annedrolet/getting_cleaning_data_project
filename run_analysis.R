
library(dplyr)



# download zip with url 
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipDir <- "UCI HAR Dataset.zip"

if (!file.exists(zipDir)) 
  download.file(url, zipDir, mode="wb")


# unzip 
dir <- "UCI HAR Dataset"
if (!file.exists(dir)) 
  unzip(zipDir)



# read training data
trainingSubjects <- read.table(file.path(dir, "train", "subject_train.txt"))
trainingValues <- read.table(file.path(dir, "train", "X_train.txt"))
trainingActivity <- read.table(file.path(dir, "train", "y_train.txt"))

# read test data
testSubjects <- read.table(file.path(dir, "test", "subject_test.txt"))
testValues <- read.table(file.path(dir, "test", "X_test.txt"))
testActivity <- read.table(file.path(dir, "test", "y_test.txt"))

# read features, don't convert text labels to factors
features <- read.table(file.path(dir, "features.txt"), as.is = TRUE)
## note: feature names (in features[, 2]) are not unique

# read activity labels
activities <- read.table(file.path(dir, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")


# join tables into one table
humanActivity <- rbind(cbind(trainingSubjects, trainingValues, trainingActivity),
                       cbind(testSubjects, testValues, testActivity)
)

# remove individual data tables to save memory
rm(trainingSubjects, trainingValues, trainingActivity, testSubjects, testValues, testActivity)

# assign column names
colnames(humanActivity) <- c("subject", features[, 2], "activity")



# determine columns of data set to keep based on column name
columnsToKeep <- grepl("subject|activity|mean|std", colnames(humanActivity))

# ... and keep data in these columns only
humanActivity <- humanActivity[, columnsToKeep]



### Uses descriptive activity names to name the activities in the data set ###

# replace activity values with named factor levels
humanActivity$activity <- factor(humanActivity$activity, levels = activities[, 1], labels = activities[, 2])



### Appropriately label the data set with descriptive variable names ###

# get column names
humanActivityCols <- colnames(humanActivity)

# remove special characters
humanActivityCols <- gsub("[\\(\\)-]", "", humanActivityCols)

# better names
humanActivityCols <- gsub("^f",   "frequencyDomain",   humanActivityCols)
humanActivityCols <- gsub("^t",   "timeDomain",        humanActivityCols)
humanActivityCols <- gsub("Acc",  "Accelerometer",     humanActivityCols)
humanActivityCols <- gsub("Gyro", "Gyroscope",         humanActivityCols)
humanActivityCols <- gsub("Mag",  "Magnitude",         humanActivityCols)
humanActivityCols <- gsub("Freq", "Frequency",         humanActivityCols)
humanActivityCols <- gsub("mean", "Mean",              humanActivityCols)
humanActivityCols <- gsub("std",  "StandardDeviation", humanActivityCols)

# correct typos
humanActivityCols <- gsub("BodyBody", "Body", humanActivityCols)

# use new labels as column names
colnames(humanActivity) <- humanActivityCols



### Create a second, independent tidy set with the average of each variable for each activity and each subject ###

# group by subject and activity and summarise using mean
humanActivityMeans <- humanActivity %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# output to file "tidy_data.txt"
write.table(humanActivityMeans, "tidy_data.txt", row.names = FALSE, quote = FALSE)

