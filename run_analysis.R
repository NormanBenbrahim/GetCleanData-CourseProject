##### first things first, we get the data

##### note my .gitignore file specifies it will ignore files in the data folder
##### running this file on any machine should create the data and output

# create our data folder
if (!file.exists("./data")) {
    dir.create("./data")
}

# link for data download
f <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# create temp file, unzip the file, then store as meaningful name (Dataset)
if (!file.exists("./data/UCI HAR Dataset")){
    temp <- tempfile()
    download.file(f, destfile = temp)
    unzip(temp, exdir = "./data/")
    unlink(temp)
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
    idx <-as.logical(f1 + f2)
    
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
train <- read_vals("./data/UCI HAR Dataset/train/X_train.txt")
test <- read_vals("./data/UCI HAR Dataset/test/X_test.txt")

# stack them on top of each other
df <- rbind(train, test)

# celebrate
str(df)