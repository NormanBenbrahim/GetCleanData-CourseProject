##### first things first, we get the data

##### note my .gitignore file specifies it will ignore files in the data folder
##### running this file on any machine should create the data and output

f <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists("./data")) {
    dir.create("./data")
}

# create temp file, unzip the file, then store as meaningful name (Dataset)
if (!file.exists("./data/Dataset")){
    temp <- tempfile()
    download.file(f, destfile = temp)
    unzip(temp, exdir = "./data/")
    unlink(temp)
}

