---
title: "README"
author: "Jan Stepan"
date: "11 10 2020"
output: html_document
---
The script analyzes data from UCI HAR Dataset. The archive file needs to be extracted into the working directory.

Desription of the used files in Dataset:
features.txt - descriptions for features
X_train.txt - measurements of the features in train set
y_train.txt - numbered activity for each measurement for train set
X_test.txt - measurements of the features in test set
y_test.txt - numbered activity for each measurement for test set
subject_train.txt - subject for each measurement for train set
subject_test.txt - subject for each measurement for test set


How this script works:

Stores the train data.
Adds variables names to train data.
Adds activities and subjects to train data.

Stores the test data.
Adds variables names to test data.
Adds activities and subjects to test data.

Merges the training and the test sets and creates one data set.

Extracts column names.
Extracts only the measurements on the mean and standard deviation for each measurement.

Uses descriptive activity names to name the activities in the data set.

From the data set above creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Creates new dataset. 

