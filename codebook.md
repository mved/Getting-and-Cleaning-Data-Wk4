The Tidy Set was produced via R-Script run_analysis.R. 
The script run_analysis.R captures and simplifies the data related to Human Activity recognition project found under the below 
link and presents into a readable format.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six 
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on 
the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a 
constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding 
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed 
to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features 
was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 



- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

There are two data sets within this collection. A test set and a train set. All variables related to mean and standard deviation are 
pulled from the test and train set and merged into a single set.
Selected variables below follow a naming convention chosen for ease of use and are based on the original variable names in the project. 
A time prefix is left as – “t” and indicates that the variable is based on a time observation. Term “Acc: which means full term 
accelerate is also shown as-is and is related to accelerometer measures. “std” is the term for standard deviation. Measures that are 
combinations of previous measures with a “.” and are shown as tGravityAcc.mean which is the combined mean of previous angle gravity 
measures.
All variables are numeric and are found in the following order. These labels can also be found in the tidy file : 
signals_Aggby_subject .txt 
which contains the measures of each variable.

tBodyAcc.mean.X
tBodyAcc.mean.Y
tBodyAcc.mean.Z
tBodyAcc.std.X
tBodyAcc.std.Y
tBodyAcc.std.Z
tGravityAcc.mean.X
tGravityAcc.mean.Y
tGravityAcc.mean.Z
tGravityAcc.std.X
tGravityAcc.std.Y
tGravityAcc.std.Z
tBodyAccJerk.mean.X
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z
tBodyAccJerk.std.X
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z
tBodyGyro.mean.X
tBodyGyro.mean.Y
tBodyGyro.mean.Z
tBodyGyro.std.X
tBodyGyro.std.Y
tBodyGyro.std.Z
tBodyGyroJerk.mean.X
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z
tBodyGyroJerk.std.X
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z
tBodyAccMag.mean
tBodyAccMag.std
tGravityAccMag.mean
tGravityAccMag.std
tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyGyroMag.mean
tBodyGyroMag.std
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std
fBodyAcc.mean.X
fBodyAcc.mean.Y
fBodyAcc.mean.Z
fBodyAcc.std.X
fBodyAcc.std.Y
fBodyAcc.std.Z
fBodyAccJerk.mean.X
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z
fBodyAccJerk.std.X
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z
fBodyGyro.mean.X
fBodyGyro.mean.Y
fBodyGyro.mean.Z
fBodyGyro.std.X
fBodyGyro.std.Y
fBodyGyro.std.Z
fBodyAccMag.mean
fBodyAccMag.std
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std

Feature Selection
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 
1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity 
units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 
'total_acc_z_train.txt' files for the Y and Z axis. 


- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total 
acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The 
units are radians/second. 
