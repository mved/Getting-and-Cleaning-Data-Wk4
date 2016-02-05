## Default Folder:
## C:/Users/<YourName>/Documents/R/data/

library("plyr")

download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', destfile='Dataset.zip') 
unzip('Dataset.zip')

#### The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
#### The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
#### ....
#### A full description is available at the site where the data was obtained:
#### http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#### Here are the data for the project:
#### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



#### Read All Data.

## Read test and train.
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt') 
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt') 

read_X_test <- read.table('./UCI HAR Dataset/test/X_test.txt') 
read_X_train <- read.table('./UCI HAR Dataset/train/X_train.txt') 
read_y_test <- read.table('./UCI HAR Dataset/test/y_test.txt') 
read_y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')

read_test <- read.table('./UCI HAR Dataset/test/subject_test.txt') 
read_train <- read.table('./UCI HAR Dataset/train/subject_train.txt') 

## Read features test and train
read_features <- read.table('./UCI HAR Dataset/features.txt', colClasses = c("character"))
		
subject_merged <- rbind(subject_train, subject_test) 

#Read activity labels 
read_activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', col.names = c("Id", "Activity"))
#Read features
read_features<-read.table('./UCI HAR Dataset/features.txt', colClasses = c("character"))

#1.Merges the training and the test sets to create one data set.
traindata <- cbind(cbind(read_X_train, subject_train), read_y_train)
testdata <- cbind(cbind(read_X_test, subject_test), read_y_test)

signals_data<-rbind(traindata, testdata)
signals_labels<-rbind(rbind(read_features, c(562, "Subject")), c(563, "Id"))[,2]
names(signals_data)<-signals_labels
## table(signals_data[1,])

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
signalsdatameanstd <- signals_data[,grepl("mean\\(\\)|std\\(\\)|Subject|Id", names(signals_data))]
## table(signalsdatameanstd[1,])

#3. Uses descriptive activity names to name the activities in the data set
##signalsdatameanstd <- mefrge(signalsdatameanstd, read_activity_labels, by = "Id", match = "first")
##signalsdatameanstd <- rbind(signalsdatameanstd, read_activity_labels, by = "Id")

signalsdatameanstd <- merge(signalsdatameanstd, read_activity_labels, by = "Id")
signalsdatameanstd <- signalsdatameanstd[,-1]
## table(signalsdatameanstd[1,])


#4. Appropriately labels the data set with descriptive names.
names(signalsdatameanstd) <- gsub("([()])","",names(signalsdatameanstd))
names(signalsdatameanstd) <- make.names(names(signalsdatameanstd))

#5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject 
Output_Results <- ddply(signalsdatameanstd, c("Subject","Activity"), numcolwise(mean))

#improve column names
Outputheaders <- names(Output_Results)
Outputheaders <- sapply(Outputheaders, addSuffix, ".mean")
names(Output_Results)<-Outputheaders

## The below file: signals_Agg_by_subject.txt is the tidy data set aggregated by Subject and Activity.
write.table(Output_Results, file = './signals_Agg_by_subject.txt', row.name=FALSE)
## The below is for Un-aggregated data. (All Subjects and All Activities.. May have duplicate rows).
write.table(signalsdatameanstd, file = './signals_all_subject.txt', row.name=FALSE)
