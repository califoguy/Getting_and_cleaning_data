# You should create one R script called run_analysis.R that does the following. 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set.
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Directory and filename of the clean/tidy data:
dirFile <- "./UCI HAR Dataset"

tidyFile <- "./tidy-dataset.txt"

# Directory and filename of the clean / tidy data
tidyFileAVGtxt <- "./tidy-dataset-AVG.txt"


## Step 1. Merges the training and the test sets to create one data set.
x1_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
X1_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y1_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y1_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject1_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject1_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Combine the data table [train and test] using rows
x <- rbind(x1_train, X1_test)
y <- rbind(y1_train, y1_test)
s <- rbind(subject1_train, subject1_test)

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# Read features labels
featuresfile <- read.table("./UCI HAR Dataset/features.txt")
# Friendly names to features column
names(featuresfile) <- c('feat_id', 'feat_name')

# Search for mean or standard deviation within each element of character vector
search_features <- grep("-mean\\(\\)|-std\\(\\)", featuresfile$feat_name) 
x <- x[, search_features] 

# Replaces all matches of a string features 
names(x) <- gsub("\\(|\\)", "", (featuresfile[search_features, 2]))

## Step 3. Uses descriptive activity names to name the activities in the data set.
## Step 4. Appropriately labels the data set with descriptive variable names.
# Read activity labels
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# assign descriptive names to activities column
names(activities) <- c('act_id', 'act_name')
y[, 1] = activities[y[, 1], 2]

names(y) <- "Activity"
names(s) <- "Subject"

# Combines the data table by columns
tidySet <- cbind(s, y, x)

# Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
p <- tidySet[, 3:dim(tidySet)[2]] 

tidyAVGSet <- aggregate(p,list(tidySet$Subject, tidySet$Activity), mean)

# Activity and Subject name of columns are selected and set for the dataset 
names(tidyAVGSet)[1] <- "Subject"
names(tidyAVGSet)[2] <- "Activity"

# Final Step - Writes the tidy data set and Average file in the given directory
write.table(tidySet, tidyFile, row.name=FALSE)

write.table(tidyAVGSet, tidyFileAVGtxt, row.name=FALSE)