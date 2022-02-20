
## Course Project

setwd("./1. Andy/Data Sci/Curso 3/UCI HAR Dataset")
library(dplyr)

# General columns
    act_labels <- read.table ("./activity_labels.txt")
    feats <- read.table ("./features.txt")
    
# Test dataset
    Xtest <- read.table ("./test/X_test.txt")
    Ytest <- read.table ("./test/Y_test.txt")
    Sub_test <- read.table ("./test/subject_test.txt")
    colnames(Xtest) <- feats$V2
    
    XY_test <- cbind(Sub_test,Ytest,Xtest)
    colnames(XY_test) <- c("subject", "activity-names", feats$V2)

# Train dataset    
    Xtrain <- read.table ("./train/X_train.txt")
    Ytrain <- read.table ("./train/Y_train.txt")
    Sub_train <- read.table ("./train/subject_train.txt")
    colnames(Xtrain) <- feats$V2
    
    XY_train <- cbind(Sub_train,Ytrain,Xtrain)
    colnames(XY_train) <- c("subject", "activity-names", feats$V2)
    
# Merging both datasets
    t_t <- rbind(XY_test,XY_train)

# Extract measurements on mean and sd
    colnames <- colnames(t_t)
    colmean <- grep("mean()" , colnames)
    colstd <- grep("std", colnames)
    measure_cols <- sort( c(colmean, colstd))
    measure_subset <- t_t[,c(1,2,measure_cols)]
 
# Descriptive activity names
    measure_subset$`activity-names` <- act_labels[ measure_subset$`activity-names`,2]
    
# Label the data set with descriptive variable names
    colnames <- colnames(measure_subset)
    colnames <- gsub("()","",colnames, fixed = TRUE)
    colnames <- gsub("-"," ",colnames, fixed = TRUE)
    colnames <- gsub("tBody","t Body ",colnames, fixed = TRUE)
    colnames <- gsub("fBody","f Body ",colnames, fixed = TRUE)
    colnames <- gsub("tGravity","t Gravity ",colnames, fixed = TRUE)
    colnames <- gsub("meanFreq","mean Freq ",colnames, fixed = TRUE)
    colnames <- gsub("BodyAccJerkMag","Body Acc Jerk Mag ",colnames, fixed = TRUE)
    colnames <- gsub("BodyGyroMag","Body Gyro Mag ",colnames, fixed = TRUE)
    colnames <- gsub("BodyGyroJerkMag","Body Gyro Jerk Mag ",colnames, fixed = TRUE)
    colnames(measure_subset) <- colnames
    
# Independent tidy data set with the average of each variable for each activity and each subject 
    tidy_data1 <- group_by(measure_subset, measure_subset$subject, measure_subset$`activity names` )
    tidy_data2 <- summarise_at(tidy_data1,colnames[3:81], mean)
   
    write.table (tidy_data2,"./Data Course Project.txt", row.names = FALSE)
    TD2 <- read.table("./Data Course Project.txt", header = TRUE)
    
    