##### first things first, we get the data
##### note my .gitignore file specifies it will ignore files in the data folder
##### running this file on any machine should create the data and output

# load necessary libraries
library(dplyr)

# create our data folder
if (!file.exists("./data")) {
    print("data folder not available, creating it now...")
    dir.create("./data")
}

# link for data download
f <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# create temp file, unzip the file, then store as meaningful name (Dataset)
if (!file.exists("./data/UCI HAR Dataset")){
    print("Downloading and extracting dataset...")
    temp <- tempfile()
    download.file(f, destfile = temp)
    unzip(temp, exdir = "./data/")
    unlink(temp)
    print("Create dataset in './data/UCI HAR Dataset'")
}

# read training and test data raw data 
print("Merging training and test raw data...")
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
x <- merge(x_train, x_test, all = TRUE)

# read training and test activity data
print("Merging training and testing activity data...")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_train, y_test)

# read training and testing subject data
print("Merging training and test subject data...")
s_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt") 
s_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
s <- merge(s_train, s_test, all = TRUE)

# get activity labels
activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

# get feature names
col_names <- read.table("./data/UCI HAR Dataset/features.txt")$V2

# cleanup some of the feature names
col_names <- sub("^t", "time_", col_names)
col_names <- sub("^f", "freq_", col_names)

# rename table columns
colnames(x) <- col_names
colnames(y) <- "activity"
colnames(s) <- "subject"

# grep columns that have mean and stddev
f1 <- grepl("(.-mean\\(\\).)", col_names)
f2 <- grepl("(.std\\(\\).)", col_names)
idx <- as.logical(f1 + f2)
sub_col_names <- col_names[idx]

# full table of measurements
final <- cbind(s, y, x)

# grab only mean and standard deviation
final <- final[, sub_col_names]

# tidy up the names
final_names <- names(final)
final_names <- sub("-mean\\(\\)", "_mean", final_names)
final_names <- sub("-std\\(\\)", "_std", final_names)
final_names <- sub("-X", "_x", final_names)
final_names <- sub("-Y", "_y", final_names)
final_names <- sub("-Z", "_z", final_names)

# add new names
names(final) <- final_names

write.table(final, "./tidy_dataset.txt", row.names = FALSE)
print("Saved resulting tidy dataset in file './tidy_dataset.txt'")