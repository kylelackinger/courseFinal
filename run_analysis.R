## Load "dplyr" library
library(dplyr)

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
trainSubject <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
trainingData <- cbind(trainingActivity, trainSubject, training)

fullData <- tbl_df(rbind(testData, trainingData))

featureNames <- read.table("./data/UCI HAR Dataset/features.txt")
featureNames <- featureNames[,2]