##### first things first, we get the data

##### note my .gitignore file specifies it will ignore files in the data folder
##### running this file on any machine should create the data and output

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

# function to read the files and appropriate columns
read_vals <- function(fname) {
    # first load the "features.txt" file to get the colnames
    col_names <- readLines("./data/UCI HAR Dataset/features.txt")
    
    # remove leading number from the name 
    col_names <- sub("^([0-9]){1,3} ", "", col_names)
    
    # grep column names which have '*-mean()*' and '*-std()* in them, boolean
    f1 <- grepl("(.-mean\\(\\).)", col_names)
    f2 <- grepl("(.std\\(\\).)", col_names)
    idx <- as.logical(f1 + f2)
    
    # make a subset of the column names based on the idx
    sub_col_names <- col_names[idx]
    
    # initialize class of columns for later reading
    col_classes <- rep("numeric", length(idx))
    
    for (i in 1:length(col_classes)) {
        if (idx[i]==F) {
            col_classes[i] = "NULL"
        } 
    }    
    
    df <- read.table(fname, col.names = col_names, colClasses = col_classes)
    names(df) <- sub_col_names
    return(df)
}

# read training and testing sets
print("Creating and merging test and training sets...")
train <- read_vals("./data/UCI HAR Dataset/train/X_train.txt")
test <- read_vals("./data/UCI HAR Dataset/test/X_test.txt")

# stack them on top of each other
df <- rbind(train, test)

# take care of the variable names. let's use some descriptive names to rename
# these variables.  the variables come from the accelerometers and gyroscope. 
# prefix 't' denotes time and prefix 'f' denotes frequency.

var_names <- names(df)

# suffix mean and std
var_names <- sub("-mean\\(\\)", "_mean", var_names)
var_names <- sub("-std\\(\\)", "_std", var_names)

# replace spatial variables with '_{i}' for i={X, Y, z}
var_names <- sub("-X", "_x", var_names)
var_names <- sub("-Y", "_y", var_names)
var_names <- sub("-Z", "_z", var_names)

# replace the t and f time 'time_' and 'freq_'
var_names <- sub("^f", "freq_", var_names)
var_names <- sub("^t", "time_", var_names)

# rename
names(df) <- var_names

# save the resulting dataset as csv file
out_name <- "tidy_dataset.csv"
write.table(df, out_name, sep = ",")
print("Saved resulting tidy dataset in file './tidy_dataset.csv'")