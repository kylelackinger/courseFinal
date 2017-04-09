## Final Project for Getting and Cleaning Data Course README

This repo contains data obtained from the following reference:

* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Original subject matter for the data set was activity recognition of 
humans using smartphone data.  The data was pulled from onboard smartphone
sensors, specifically triaxial accelerometer and a gyroscope.  The data
taken from these sensors has already been preprocessed by the original 
team.

The experiments carried out involved 30 volunteers that carried a Samsung
smartphone on their hip.

The raw dataset was obtained from the UCI repository at the following link

* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

At a high level, for each record the following is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

The courseFinal repo contains the following:

* This README describing the contents of the repo
* A data folder with all raw data from the UCI repository
* Codebook.md describing information about the variables seen in the raw data set and summary decisions
* run_analysis.R script which loads the required data and processes
* avgData.txt is a tidy data set with the average of each variable for each activity and each subject 

Within the data folder, the following raw data is contained:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': Complete list of variables.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training data set.
* 'train/y_train.txt': Training activity labels.
* 'test/X_test.txt': Test data set.
* 'test/y_test.txt': Test activity labels.
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample.
* 'train/subject_test.txt': Each row identifies the subject who performed the activity for each window sample.
* Initial signal data is also contained, but is not utilized in this analysis



