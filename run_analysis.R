## Load necessary libraries
library(dplyr)
library(reshape2)

## Set the working directory appropriately
setwd("~/Coursera/Data_Science/Course_Projects/3_Getting_and_Cleaining_Data/courseFinal")

## Download the zipped file from the specified source and unzip to a directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/sensorData.zip", mode = "wb")
unzip("./data/sensorData.zip", exdir = ".data/UCI HAR Dataset")

## Read in the "test" and "train" data files and combine
test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
testActivity <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testData <- cbind(testActivity, testSubject, test)

training <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
trainingActivity <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
trainingData <- cbind(trainingActivity, trainSubject, training)

fullData <- rbind(testData, trainingData)

## Read in the feature names that make up the dataframe variable names and apply to complete DF
featureNames <- read.table("./data/UCI HAR Dataset/features.txt")
featureNames <- c("activity", "subjectNumber", as.character(featureNames[,2]))
names(fullData) <- featureNames

## Construct meaningful activity names for the DF
activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
for(i in 1:6) {
    fullData$activity <- gsub(i, activity[i,2], fullData$activity)
}

## Extract data variables that involve either a mean or a standard deviation
means <- grep("mean", names(fullData))
stds <- grep("std", names(fullData))
extractIndex <- sort(c(1, 2, means, stds))
statData <- tbl_df(fullData[, extractIndex])

## Reshape data to compute mean for each subject and activity
varNames <- names(statData)[3:ncol(statData)]
statMelt <- melt(statData, id = c("activity", "subjectNumber"), measure.vars = varNames)
avgData <- dcast(statMelt, activity + subjectNumber ~ variable, mean)

## Write the averaged data set to file for submission
write.table(avgData, file = "./avgData.txt",row.names = FALSE)