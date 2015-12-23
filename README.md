Getting and Cleaning Data Course Project
========================================


## Project Description
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. Students will be graded by their peers
on a series of yes/no questions related to the project.

Students will be required to submit:

1. a tidy data set as described below
2. a link to a Github repository with the script for performing the analysis, and
3. a code book that describes the variables, the data, and any transformations or
   work that the students performed to clean up the data called CodeBook.md. Students
   should also include a README.md in the repo with your scripts. This file explains 
   how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced
algorithms to attract new users. The data linked to from the course website represent
data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Students should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## What you find in this repository

* __CodeBook.md__
* __README.md__
* __run_analysis.R__

## Set the Location for Running the R Code

For the purpose of this assignment, follow the below steps to set the location for running the R code:

* Create a folder in your working directory named "project_data".

* Download and unzip the files from the link below into the "project_data" folder.

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

* Run the code found in the run_analysis.R file found in this repository.
