# *********************************************************
# Version 0.99.484 - © 2009-2015 RStudio, Inc.on Windows 10
# Course Project: Getting and Cleaning Data: getdata-033
# run_analysis.R
#
# Set working Directory that includes Data


# Load Plyr package
library(plyr)

#Load training datasets
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

#Load test datasets 
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Create x, y and subject data by combining train and test data sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Get measurement for mean and sd
features <- read.table("features.txt")
mean_sd_features <- grep("-(mean|std)\\(\\)", features[, 2])

# Subset the desired columns
x_data <- x_data[,mean_sd_features]
names(x_data) <- features[mean_sd_features, 2]

# Describe the data set
actvity <- read.table("activity_labels.txt")
y_data[, 1] <- actvity[y_data[, 1], 2] 

# correct with names
names(y_data) <- "activity"

# Name desriptive
names(subject_data) <- "subject"

# Merge the training and the test sets to create one data set.
final_data <- cbind(x_data, y_data, subject_data)

# Independent tidy data using averages
avgs_data <- ddply(final_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

# Write independent tidy data from averages 
write.table(avgs_data, "tidy_data.txt", row.names = F)
