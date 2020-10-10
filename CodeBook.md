---
title: "CodeBook"
author: "Jan Stepan"
date: "11 10 2020"
output: html_document
---

Variables description:
subject - ID of participant
activity - ID of activity type
Mean and standart deviation for the following features:

*        tBodyAcc-XYZ
*        tGravityAcc-XYZ
*        tBodyAccJerk-XYZ
*        tBodyGyro-XYZ
*        tBodyGyroJerk-XYZ
*        tBodyAccMag
*        tGravityAccMag
*        tBodyAccJerkMag
*        tBodyGyroMag
*        tBodyGyroJerkMag
*        fBodyAcc-XYZ
*        fBodyAccJerk-XYZ
*        fBodyGyro-XYZ
*        fBodyAccMag
*        fBodyAccJerkMag
*        fBodyGyroMag
*        fBodyGyroJerkMag

Following transformations were performed to clean up the data:

Added activity_label - factor for activities using these levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

"Average" dataset created as a mean of features grouped by activity label and subject