## Final Project Codebook for Getting and Cleaning Data Course

Raw data utilized for this analysis was obtained at the following URL:

* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data supplied was zipped and required unpacking prior to analysis.  The 
contents of the raw data files are explained at a high level in the 
attached README.

Content describing feature data is relied heavily on the original data producer 
with reference here:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

### Raw Data

The data obtained was initially processed by the original research team and is
divided into two partitions, training and test data.  For both training and test 
the following data is provided:

* A subject identifier (1 - 30) file idicating which data observations are tied to which specific subject
* An activity identifier file indicating which data observations are tied to what type of activity
** Walking
** Walking Upstairs
** Walking Downstairs
** Sitting
** Standing
** Laying
* Feature data from onboard smartphone sensors described in detail in the "features_info.txt" file

Standard units seen in physics apply to the features listed below (e.g. m/s^2 for acceleration)

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

## Data Summarization

Activity and subject labels are appended to the test and train data sets.  The
test and train data sets are then joined to produce one large data frame with
all observations contained (dimensions: 10299 x 563)

The supplied feature names are then added as column names to the appropriate
dataframe columns as well as "activity" and "subjectNumber".

Meaningful activity names are added to the full dataframe providing human readable
data as opposed to 1, 2, 3, 4, 5, or 6.  

Variables (columns) dealing with either a mean or standard deviation are extracted
from the full dataframe.  Subject IDs and activities are extracted as well.  Results
are stored in a new dataframe called "statData".

The avarage of all extracted features by activity and subject ID are summarized in
the "avgData" dataframe.  This frame is stored in a wide format with dimensions 
equal to 180 x 81.  The "melt" function is used to summarize the original dataframe
and the "dcast" function is used to restructure and apply the mean function for
analysis.   Feature data contained in the table is the mean of the feature indicated
in the column names, with the exception of subject ID and activity.  



