# Getting And Cleaning Data Course Project

This is the repo that contains my submission for the Data Science "Getting and Cleaning Data" course offered through Coursera by Johns Hopkins University. 

# The Data

One of the most exciting areas in all of data science right now is wearable computing - see for example [this](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) article. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

A full description and download link for the dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) 

# The tasks

Create a script called `run_analysis.R` that should do the following:

1. Merge the training and the test sets to create one data set
2. Extract only the measurements on the mean and standard deviation for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# The files contained in this repo

* `.gitignore`: Specifies which of the folders in my local directory to ignore, specifically it ignores the large data files
* `README.md`: This file
* `run_analysis.R`: The R code to run the complete analysis, from data download to final step. It should be self sufficient, i.e. if you download the file and run it in R it should complete the entire project on your local machine
* `Codebook.md`: The codebook describing all the variables in the resulting dataset