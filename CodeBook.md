---
title: "CodeBook"
author: "Me"
date: "19/2/2022"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

UCI HAR Dataset Adapted

A dataset that takes the original training and test sets along with feature, activity and subject 
labels from the UCI HAR Dataset and turns them into one table, selecting only the variables that 
measure mean and std, leaving them properly labelled and arranges them by average for each 
observation.

measure_subset subject 30
    Identifier for the subject who performed the activity

measure_subset activity 6
    List of 6 different activity names, each properly labeled
        1 LAYING
        2 SITTING
        3 STANDING
        4 WALKING
        5 WALKING_DOWNSTAIRS
        6 WALKING_UPSTAIRS

 
Columns that summarise the average value of each variable for each subject and each activity 
    t Body Acc mean X
    t Body Acc mean Y
    t Body Acc mean Z
    t Body Acc std X
    t Body Acc std Y
    t Body Acc std Z
    t Gravity Acc mean X
    t Gravity Acc mean Y
    t Gravity Acc mean Z
    t Gravity Acc std X
    t Gravity Acc std Y
    t Gravity Acc std Z
    t Body AccJerk mean X
    t Body AccJerk mean Y
    t Body AccJerk mean Z
    t Body AccJerk std X
    t Body AccJerk std Y
    t Body AccJerk std Z
    t Body Gyro mean X
    t Body Gyro mean Y
    t Body Gyro mean Z
    t Body Gyro std X
    t Body Gyro std Y
    t Body Gyro std Z
    t Body GyroJerk mean X
    t Body GyroJerk mean Y
    t Body GyroJerk mean Z
    t Body GyroJerk std X
    t Body GyroJerk std Y
    t Body GyroJerk std Z
    t Body AccMag mean
    t Body AccMag std
    t Gravity AccMag mean
    t Gravity AccMag std
    t Body AccJerkMag mean
    t Body AccJerkMag std
    t Body GyroMag mean
    t Body GyroMag std
    t Body GyroJerkMag mean
    t Body GyroJerkMag std
    f Body Acc mean X
    f Body Acc mean Y
    f Body Acc mean Z
    f Body Acc std X
    f Body Acc std Y
    f Body Acc std Z
    f Body Acc mean Freq  X
    f Body Acc mean Freq  Y
    f Body Acc mean Freq  Z
    f Body AccJerk mean X
    f Body AccJerk mean Y
    f Body AccJerk mean Z
    f Body AccJerk std X
    f Body AccJerk std Y
    f Body AccJerk std Z
    f Body AccJerk mean Freq  X
    f Body AccJerk mean Freq  Y
    f Body AccJerk mean Freq  Z
    f Body Gyro mean X
    f Body Gyro mean Y
    f Body Gyro mean Z
    f Body Gyro std X
    f Body Gyro std Y
    f Body Gyro std Z
    f Body Gyro mean Freq  X
    f Body Gyro mean Freq  Y
    f Body Gyro mean Freq  Z
    f Body AccMag mean
    f Body AccMag std
    f Body AccMag mean Freq 
    f Body Body Acc Jerk Mag  mean
    f Body Body Acc Jerk Mag  std
    f Body Body Acc Jerk Mag  mean Freq 
    f Body Body Gyro Mag  mean
    f Body Body Gyro Mag  std
    f Body Body Gyro Mag  mean Freq 
    f Body Body Gyro Jerk Mag  mean
    f Body Body Gyro Jerk Mag  std
    f Body Body Gyro Jerk Mag  mean Freq 


    .
