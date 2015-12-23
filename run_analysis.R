##      Getting and Cleaning Data Project

##      There are five requirements needed to successfully complete  
##      the Getting and Cleaning Data Project.

##      1)      Merges the training and the test sets to create one 
##              data set.

##      2)      Uses descriptive activity names to name the activities 
##              in the data set.

##      3)      Extracts only the measurements on the mean and 
##              standard deviation for each measurement.

##      4)      Appropriately labels the data set with descriptive 
##              variable names. 

##      5)      From the data set in step 4, creates a second, independent 
##              tidy data set with the average of each variable for each 
##              activity and each subject.
             


##      The necessary packages for the project.
        
require('plyr')
require('dplyr')
require('data.table')

        
#########################################################################

##      Requirement 1: Merge the training and the test sets to 
##      create one data set.


##      Requirement 2: Use descriptive activity names to name the a
##      activities in the data set.               

#########################################################################
        

##      In this section, we will get the data and organize it into one 
##      data set and utilize descriptive activity names to name the a
##      activities in the data set. 

##      As outlined in the directions, download the data files required 
##      for this assignment at: 
       
##      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##      For the purpose of this assignment, create a folder in the working
##      directory named "project_data".  Once you have the project data 
##      downloaded, set the path statements to its location in 
##      "project_data".  
     
        
project_data_path <- file.path("./project_data","UCI_HAR_Dataset")
training_data_path <- file.path(project_data_path,'train')
test_data_path <- file.path(project_data_path,'test')


##      Once you have the paths set to locate the data, create variables 
##      to read the data.  There are two sets of data: training and test.

##      The files included in training are:
##      X_train.txt, subject_train.txt, and y_train.txt.  
        
##      The files included in training are:
##      X_test.txt, subject_test.txt, y_test.txt.
 
       
training_set <- read.table(file.path(training_data_path,'X_train.txt'),header=F)
training_subjects <- read.table(file.path(training_data_path,'subject_train.txt'),header=F)
training_labels  <- read.table(file.path(training_data_path,'y_train.txt'),header=F)
        
test_set <- read.table(file.path(test_data_path,'X_test.txt'),header=F)
test_subjects <- read.table(file.path(test_data_path,'subject_test.txt'),header=F)
test_labels  <- read.table(file.path(test_data_path,'y_test.txt'),header=F)

        
##      Additionally, there activity labels and column labels that also 
##      need to be created.
        

project_activities<- read.table(file.path(project_data_path,'activity_labels.txt'),header=F)
project_features<- read.table(file.path(project_data_path,'features.txt'),header=F)
        
        
##      It is now time to assemble the files.  Below are the steps:

##      First, using the rbind() function combine the latter files 
##      together.
 
               
combine_project_sets <- rbind(training_set,test_set)
combine_project_subjects <- rbind(training_subjects,test_subjects)
combine_project_labels <- rbind(training_labels,test_labels)


##      Second, using the names() funtion we are going to name the 
##      columns in the data sets.
   
     
names(combine_project_sets) <- project_features$V2
names(combine_project_subjects) <- c('subjects')
names(combine_project_labels) <- c('activities')
  
      
##      Third, it is necessary to replace the activity codes (1-6) that 
##      are in combine_project_labels with the lookup/descriptions
##      that are in project_activities.
 
       
combine_project_labels[,1] = project_activities[combine_project_labels[,1],2]
        
        
##      The fourth and final step in assembling the entire data set is 
##      to use the cbind() function to unite the columns.
     
        
complete_project_data <- cbind(combine_project_subjects,combine_project_labels,combine_project_sets)


#########################################################################        

##      Requirement 3: Isolate the Mean and Standard deviation for 
##      each measurement.

#########################################################################

        
##      Below are the steps to extract the mean and standard deviation 
##      for each measurement:

##      First, since there are 561 variables, use the grep() function 
##      to look for the variables with Mean and Standard Deviation (STD) 
##      in the name.  

required_columns <- grep(".*Mean.*|.*Std.*", names(complete_project_data), ignore.case=TRUE)
required_columns <- c(1,2,required_columns)

##      Finally, use required_columns to make sure we have the 
##      data we want.

project_filtered_data <- subset(complete_project_data,select=required_columns)


#########################################################################        

##      Requirement 4: Appropriately label the data set with descriptive 
##      variable names.

#########################################################################


##      The column names contain the following codes: 

##      t = time,
##      f = frequency
##      Acc = Accelerometer, 
##      Gyro = Gyroscope, 
##      Mag = Magnitude,
##      BodyBody = Body.  

##      To make column names easier to understand, the function gsub()  
##      will be utilized to assign the corresponding descriptions.

names(project_filtered_data)<-gsub("^t", "time", names(project_filtered_data))
names(project_filtered_data)<-gsub("^f", "frequency", names(project_filtered_data))
names(project_filtered_data)<-gsub("Acc", "Accelerometer", names(project_filtered_data))
names(project_filtered_data)<-gsub("Gyro", "Gyroscope", names(project_filtered_data))
names(project_filtered_data)<-gsub("Mag", "Magnitude", names(project_filtered_data))
names(project_filtered_data)<-gsub("BodyBody", "Body", names(project_filtered_data))
names(project_filtered_data)<-gsub("\\(t", "\\(time", names(project_filtered_data))


#########################################################################        

##      Requirement 5: From the data set in step 4, create a second,  
##      independent tidy data set with the average of each variable for  
##      each activity and each subject.

#########################################################################

##      Below are the steps to create an independent tidy data set with the average of   
##      each variable for each activity and each subject.

##      First, change subjects to factor.

project_filtered_data$subjects <- as.factor(project_filtered_data$subjects)

##      Second, make project_filtered_data a data table.

project_filtered_data <- data.table(project_filtered_data)

##      Third, use aggregate to summarize by subject & activity, and then 
##      average it all up.

tidydata <- aggregate(. ~subjects + activities, project_filtered_data, mean)
tidydata <- tidydata[order(tidydata$subjects,tidydata$activities),]

##      Finally, write the second independent tidy data out to project data
##      folder just off the working directory.

write.table(tidydata,
            file.path('./project_data','project_tidy_data_set.txt'),
            sep='\t',
            row.names=F
            )
