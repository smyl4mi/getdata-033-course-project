## Course Project - Getting and Cleaning Data
This repository contains files submitted for grading for the **Getting and Cleaning Data** Track on the Data Science Specialisation on Cousera. The dataset used is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and must be downloaded and unzipped, and the working directory set to the folder "UCI HAR Dataset". 

## Files 
The repository contains the following files 
__**run_analysis.R**__ : An R script that does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity    and each subject.

__**tidy.text**__ : An independent tidy dataset created with **run_analysis.R** with the average of each variable for each activity and each subject

__**CODEBOOK.md**__ : A markdown file that contains the description of the variables and units in the datasets
