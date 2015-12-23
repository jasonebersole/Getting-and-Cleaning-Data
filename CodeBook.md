
#                   Getting and Cleaning Data Project: Code Book

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Identifiers in Tidy Data Set
 - subjects                                         
 - activities 

## Measurements in Tidy Data Set                                   
 - timeBodyAccelerometer-mean()-X                  
 - timeBodyAccelerometer-mean()-Y                    
 - timeBodyAccelerometer-mean()-Z                    
 - timeBodyAccelerometer-std()-X                    
 - timeBodyAccelerometer-std()-Y                     
 - timeBodyAccelerometer-std()-Z"                     
 - timeGravityAccelerometer-mean()-X                 
 - timeGravityAccelerometer-mean()-Y                 
 - timeGravityAccelerometer-mean()-Z                 
 - timeGravityAccelerometer-std()-X                 
 - timeGravityAccelerometer-std()-Y                  
 - timeGravityAccelerometer-std()-Z                 
 - timeBodyAccelerometerJerk-mean()-X                
 - timeBodyAccelerometerJerk-mean()-Y                
 - timeBodyAccelerometerJerk-mean()-Z                
 - timeBodyAccelerometerJerk-std()-X                
 - timeBodyAccelerometerJerk-std()-Y                 
 - timeBodyAccelerometerJerk-std()-Z                 
 - timeBodyGyroscope-mean()-X                        
 - timeBodyGyroscope-mean()-Y                       
 - timeBodyGyroscope-mean()-Z                        
 - timeBodyGyroscope-std()-X                       
 - timeBodyGyroscope-std()-Y                         
 - timeBodyGyroscope-std()-Z                         
 - timeBodyGyroscopeJerk-mean()-X                    
 - timeBodyGyroscopeJerk-mean()-Y                    
 - timeBodyGyroscopeJerk-mean()-Z                    
 - timeBodyGyroscopeJerk-std()-X                     
 - timeBodyGyroscopeJerk-std()-Y                     
 - timeBodyGyroscopeJerk-std()-Z                     
 - timeBodyAccelerometerMagnitude-mean()             
 - timeBodyAccelerometerMagnitude-std()              
 - timeGravityAccelerometerMagnitude-mean()          
 - timeGravityAccelerometerMagnitude-std()           
 - timeBodyAccelerometerJerkMagnitude-mean()        
 - timeBodyAccelerometerJerkMagnitude-std()          
 - timeBodyGyroscopeMagnitude-mean()                 
 - timeBodyGyroscopeMagnitude-std()                 
 - timeBodyGyroscopeJerkMagnitude-mean()             
 - timeBodyGyroscopeJerkMagnitude-std()              
 - frequencyBodyAccelerometer-mean()-X              
 - frequencyBodyAccelerometer-mean()-Y               
 - frequencyBodyAccelerometer-mean()-Z               
 - frequencyBodyAccelerometer-std()-X                
 - frequencyBodyAccelerometer-std()-Y                
 - frequencyBodyAccelerometer-std()-Z                
 - frequencyBodyAccelerometer-meanFreq()-X          
 - frequencyBodyAccelerometer-meanFreq()-Y           
 - frequencyBodyAccelerometer-meanFreq()-Z           
 - frequencyBodyAccelerometerJerk-mean()-X           
 - frequencyBodyAccelerometerJerk-mean()-Y         
 - frequencyBodyAccelerometerJerk-mean()-Z           
 - frequencyBodyAccelerometerJerk-std()-X            
 - frequencyBodyAccelerometerJerk-std()-Y            
 - frequencyBodyAccelerometerJerk-std()-Z            
 - frequencyBodyAccelerometerJerk-meanFreq()-X       
 - frequencyBodyAccelerometerJerk-meanFreq()-Y       
 - frequencyBodyAccelerometerJerk-meanFreq()-Z       
 - frequencyBodyGyroscope-mean()-X                 
 - frequencyBodyGyroscope-mean()-Y                  
 - frequencyBodyGyroscope-mean()-Z                   
 - frequencyBodyGyroscope-std()-X                   
 - frequencyBodyGyroscope-std()-Y                   
 - frequencyBodyGyroscope-std()-Z                    
 - frequencyBodyGyroscope-meanFreq()-X              
 - frequencyBodyGyroscope-meanFreq()-Y             
 - frequencyBodyGyroscope-meanFreq()-Z               
 - frequencyBodyAccelerometerMagnitude-mean()        
 - frequencyBodyAccelerometerMagnitude-std()        
 - frequencyBodyAccelerometerMagnitude-meanFreq()   
 - frequencyBodyAccelerometerJerkMagnitude-mean()    
 - frequencyBodyAccelerometerJerkMagnitude-std()     
 - frequencyBodyAccelerometerJerkMagnitude-meanFreq()
 - frequencyBodyGyroscopeMagnitude-mean()            
 - frequencyBodyGyroscopeMagnitude-std()             
 - frequencyBodyGyroscopeMagnitude-meanFreq()        
 - frequencyBodyGyroscopeJerkMagnitude-mean()        
 - frequencyBodyGyroscopeJerkMagnitude-std()         
 - frequencyBodyGyroscopeJerkMagnitude-meanFreq()    
 - angle(timeBodyAccelerometerMean,gravity)"          
 - angle(timeBodyAccelerometerJerkMean),gravityMean) 
 - angle(timeBodyGyroscopeMean,gravityMean)          
 - angle(timeBodyGyroscopeJerkMean,gravityMean)      
 - angle(X,gravityMean)                            
 - angle(Y,gravityMean)                             
 - angle(Z,gravityMean)                                             

### Process to Create Tidy Data Set
There are five requirements needed to successfully complete the Getting and Cleaning Data Project.

      1)      Merges the training and the test sets to create one data set.

      2)      Uses descriptive activity names to name the activities in the data set.

      3)      Extracts only the measurements on the mean and standard deviation for each measurement.
      
      4)      Appropriately labels the data set with descriptive variable names. 

      5)      From the data set in step 4, creates a second, independent 
              tidy data set with the average of each variable for each 
              activity and each subject.
             
-------------------------------------------------------------------------

##                     The necessary packages for the project.
        
require('plyr')

require('dplyr')

require('data.table')

        
-------------------------------------------------------------------------

## Requirement 1: Merge the training and the test sets to create one data set.


## Requirement 2: Use descriptive activity names to name the activities in the data set.               

-------------------------------------------------------------------------
        

In this section, we will get the data and organize it into one data set and utilize descriptive activity names to name 
the activities in the data set.

As outlined in the directions, download the data files required for this assignment at:
       
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



For the purpose of this assignment, create a folder in the working directory named "project_data".  Once you have the 
project data downloaded, set the path statements to its location in "project_data". 
     
        
**project_data_path <- file.path("./project_data","UCI_HAR_Dataset")**

**training_data_path <- file.path(project_data_path,'train')**

**test_data_path <- file.path(project_data_path,'test')**


Once you have the paths set to locate the data, create variables to read the data.  

There are two sets of data: training and test.

      The files included in training are:
            1) X_train.txt
            2) subject_train.txt
            3) y_train.txt.  
        
      The files included in training are:
            1) X_test.txt
            2) subject_test.txt
            3) y_test.txt.
 
       
**training_set <- read.table(file.path(training_data_path,'X_train.txt'),header=F)**

**training_subjects <- read.table(file.path(training_data_path,'subject_train.txt'),header=F)**

**training_labels  <- read.table(file.path(training_data_path,'y_train.txt'),header=F)**
        
**test_set <- read.table(file.path(test_data_path,'X_test.txt'),header=F)**

**test_subjects <- read.table(file.path(test_data_path,'subject_test.txt'),header=F)**

**test_labels  <- read.table(file.path(test_data_path,'y_test.txt'),header=F)**



###Additionally, there activity labels and column labels that also need to be created.
        

**project_activities<- read.table(file.path(project_data_path,'activity_labels.txt'),header=F)**

**project_features<- read.table(file.path(project_data_path,'features.txt'),header=F)**
        
        

###It is now time to assemble the files.  Below are the steps:

First, using the rbind() function combine the latter files together.
 
               
**combine_project_sets <- rbind(training_set,test_set)**

**combine_project_subjects <- rbind(training_subjects,test_subjects)**

**combine_project_labels <- rbind(training_labels,test_labels)**


Second, using the names() funtion we are going to name the columns in the data sets.
   
     
**names(combine_project_sets) <- project_features$V2**

**names(combine_project_subjects) <- c('subjects')**

**names(combine_project_labels) <- c('activities')**
  
      
Third, it is necessary to replace the activity codes (1-6) that are in combine_project_labels with the 
lookup/descriptions that are in project_activities.
 
       
**combine_project_labels[,1] = project_activities[combine_project_labels[,1],2]**
        
        
The fourth and final step in assembling the entire data set is to use the cbind() function to unite the columns.
     
        
**complete_project_data <- cbind(combine_project_subjects,combine_project_labels,combine_project_sets)**


-------------------------------------------------------------------------        

##Requirement 3: Isolate the Mean and Standard deviation for each measurement.

-------------------------------------------------------------------------

        
Below are the steps to extract the mean and standard deviation for each measurement:

First, since there are 561 variables, use the grep() function to look for the variables with 
Mean and Standard Deviation (STD) in the name.  

**required_columns <- grep(".*Mean.*|.*Std.*", names(complete_project_data), ignore.case=TRUE)**

**required_columns <- c(1,2,required_columns)**

Finally, use required_columns to make sure we have the data we want.

**project_filtered_data <- subset(complete_project_data,select=required_columns)**


-------------------------------------------------------------------------        

##Requirement 4: Appropriately label the data set with descriptive variable names.

-------------------------------------------------------------------------


The column names contain the following codes: 

        1) t = time,
        2) f = frequency
        3) Acc = Accelerometer, 
        4) Gyro = Gyroscope, 
        5) Mag = Magnitude,
        6) BodyBody = Body.  

To make column names easier to understand, the function gsub() will be utilized to assign the 
corresponding descriptions.

**names(project_filtered_data)<-gsub("^t", "time", names(project_filtered_data))**

**names(project_filtered_data)<-gsub("^f", "frequency", names(project_filtered_data))**

**names(project_filtered_data)<-gsub("Acc", "Accelerometer", names(project_filtered_data))**

**names(project_filtered_data)<-gsub("Gyro", "Gyroscope", names(project_filtered_data))**

**names(project_filtered_data)<-gsub("Mag", "Magnitude", names(project_filtered_data))**

**names(project_filtered_data)<-gsub("BodyBody", "Body", names(project_filtered_data))**

**names(project_filtered_data)<-gsub("\\(t", "\\(time", names(project_filtered_data))**


-------------------------------------------------------------------------        

##Requirement 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

-------------------------------------------------------------------------

Below are the steps to create an independent tidy data set with the average of each variable for each activity 
and each subject.

First, change subjects to factor.


**project_filtered_data$subjects <- as.factor(project_filtered_data$subjects)**


Second, make project_filtered_data a data table.


**project_filtered_data <- data.table(project_filtered_data)**


Third, use aggregate to summarize by subject & activity, and then average it all up.


**tidydata <- aggregate(. ~subjects + activities, project_filtered_data, mean)**

**tidydata <- tidydata[order(tidydata$subjects,tidydata$activities),]**


Finally, write the second independent tidy data out to project data folder just off the 
working directory.


**write.table(tidydata, file.path('./project_data','project_tidy_data_set.txt'),sep='\t',row.names=F)**







