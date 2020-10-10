#store train data
train <- read.table("./UCI HAR Dataset/train/X_train.txt")

#adding variables names to train
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(train) <- features$V2

#adding activities and subjects to train
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
train$activity <- y_train$V1
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train$subject <- factor(subject_train$V1)

#store test data
test <- read.table("./UCI HAR Dataset/test/X_test.txt")

#adding variables names to test
colnames(test) <- features$V2

#adding activities and subjects to test
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt") 
test$activity <- y_test$V1
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test$subject <- factor(subject_test$V1)

#1. Merges the training and the test sets to create one data set.
mergeddataset<- rbind(test, train) 

#extract column names
columnnames <- colnames(mergeddataset)

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
meanandsdcolumns <- grep("std\\(\\)|mean\\(\\)|activity|subject", columnnames, value=TRUE)
meanandsddataset <- mergeddataset[, meanandsdcolumns] 

#3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
meanandsddataset$activity_labels <- factor(meanandsddataset$activity, labels= activity_labels$V2)

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
featurescolumnnames = grep("std\\(\\)|mean\\(\\)", columnnames, value=TRUE)
library(reshape2)
melteddataset <- melt(meanandsddataset, id = c('activity_labels', 'subject'), measure.vars = featurescolumnnames)
finale <- dcast(melteddataset, activity_labels + subject ~ variable, mean)

#create new dataset  
write.table(finale, file = "average.txt", row.names = FALSE)

