## Download and extract files from zip
if(!file.exists("./Dataset")){
    dir.create("./Dataset")
}
if (!file.exists("./Dataset/Dataset.zip")) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl,destfile="./Dataset/Dataset.zip",method="curl")
    unzip(zipfile="./Dataset/Dataset.zip", exdir="./Dataset/")
}

dataSetPath <- "./Dataset/UCI HAR Dataset/"

## Read files
featuresTest <- read.table(file.path(dataSetPath,"test","X_test.txt"))
activityTest <- read.table(file.path(dataSetPath,"test","y_test.txt"))
subjectTest <- read.table(file.path(dataSetPath,"test","subject_test.txt"))

featuresTrain <- read.table(file.path(dataSetPath,"train","X_train.txt"))
activityTrain <- read.table(file.path(dataSetPath,"train","y_train.txt"))
subjectTrain <- read.table(file.path(dataSetPath,"train","subject_train.txt"))

featureLabels <- read.table(file.path(dataSetPath, "features.txt"),stringsAsFactors=FALSE)
activityLabels <- read.table(file.path(dataSetPath, "activity_labels.txt"),stringsAsFactors=FALSE)

## Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
meanStdColumns <- grep("mean\\(\\)|std\\(\\)",featureLabels[,2]) ## Desired Column Indexes - Exclude meanFreq
#meanStdColumns <- grep("mean|std",featureLabels[,2]) ## Desired Column Indexes - Include meanFreq

## Label the data set with descriptive variable names
meanStdColumnNames <- featureLabels[meanStdColumns,2] ## Desired column names
meanStdColumnNames <- gsub("^t", "time-", meanStdColumnNames)
meanStdColumnNames <- gsub("^f", "frequency-", meanStdColumnNames)
meanStdColumnNames <- gsub("Acc", "Accelerometer", meanStdColumnNames)
meanStdColumnNames <- gsub("Gravity", "Gravity-", meanStdColumnNames)
meanStdColumnNames <- gsub("Gyro", "Gyroscope", meanStdColumnNames)
meanStdColumnNames <- gsub("Mag", "Magnitude", meanStdColumnNames)
meanStdColumnNames <- gsub("BodyBody", "Body-", meanStdColumnNames)
meanStdColumnNames <- gsub("\\(\\)", "", meanStdColumnNames)

## Merge training and test sets to create one data set
featureData <- rbind(featuresTest, featuresTrain)[meanStdColumns] ## Extract only mean and std.
names(featureData) <- meanStdColumnNames
activityData <- rbind(activityTest, activityTrain)
names(activityData) <- "activityID"
names(activityLabels) <- c("activityID","activityName")
subjectData <- rbind(subjectTest, subjectTrain)
names(subjectData) <- "subjectID"

## Joins features, activities and subjects.
fullData <- cbind(featureData, subjectData, activityData)

## Include descriptive activity names. Done by the end because the merge reorders the data.
## Explained in - https://class.coursera.org/getdata-010/forum/thread?thread_id=320
## Explained also in - https://class.coursera.org/getdata-010/forum/thread?thread_id=49
fullData<- merge(x=fullData, y=activityLabels, by.x="activityID",by.y="activityID")

## Step 5 - Create tidy data with the average of each variable for each activity and each subject
dataToWrite <- aggregate( . ~ subjectID + activityID + activityName, fullData, mean)
dataToWrite <- dataToWrite[order(dataToWrite$subjectID,dataToWrite$activityID),]
write.table(dataToWrite, file="tidy_data.txt", row.name=FALSE)