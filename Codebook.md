## Final Project Codebook for Getting and Cleaning Data Course

Raw data utilized for this analysis was obtained at the following URL:

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data supplied was zipped and required unpacking prior to analysis.  The 
contents of the raw data files are explained at a high level in the 
attached README.

### Raw Data

The data obtained was initially processed by the original research team and is
divided into two partitions, training and test data.  For both training and test 
the following data is provided:

* A subject identifier file idicating which data observations are tied to which specific subject
* An activity identifier file indicating which data observations are tied to what type of activity
* Feature data from onboard smartphone sensors described in detail in the "features_info.txt" file

#### Features Description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ (prefix 't' to denote time).
The X, Y, and Z indicate the axial signal under measurement or analysis

Jerk signals were derived from the accelaration and gyroscope data.

* tBodyAccJerk-XYZ
* tBodyGyroJerk-XYZ

Magnitudes of the 3-D time signals were also calculated via the Euclidean Norm.  

* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag

An FFT was applied to a portion of the signals (f prefix denoting frequency domain)

* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Multiple variables were estimated from the measured signals, with the most 
important for this analysis being

* mean() - Mean value
* std() - Standard deviation
* Many more are contained in the raw data, but are not important for this analysis



