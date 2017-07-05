#First, download the file and unzip
    zipfile <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(zipfile, "wearabletech.zip")
    unzip("wearabletech.zip")


##Read in the appropriate files
    ##First the test data
        subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
        testx <- read.table("UCI HAR Dataset/test/X_test.txt")
        testy <- read.table("UCI HAR Dataset/test/y_test.txt")
    ##Then the train data    
        subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
        trainx <- read.table("UCI HAR Dataset/train/X_train.txt")
        trainy <- read.table("UCI HAR Dataset/train/y_train.txt")
    ##Finally the data to label our columns and activities
        collabels <- read.table("UCI HAR Dataset/features.txt")
        activities <- read.table("UCI HAR Dataset/activity_labels.txt")

        
##Merge the data: Start by binding columns together for the test data and 
##train data separately.  Then append the train data to the bottom of
##the test data.
    testdata <- cbind(subjecttest, testx, testy)
    traindata <- cbind(subjecttrain, trainx, trainy)
    totaldata <- rbind(testdata,traindata)
    

##Rename the columns
    ## Alter column labels so they are no longer a factor
        collabels[,2] <- as.character(collabels[,2])
    names(totaldata)[1] <- "Volunteer"
    names(totaldata)[2:562] <- collabels[,2]
    names(totaldata)[563] <- "Activity"

    
## Change Activity column from numbers (1-6) to the descriptive activity
    totaldata$Activity <- as.factor(totaldata$Activity)
    levels(totaldata$Activity) <- activities[,2]
    
    
## Extract the means and standard deviations for each measurement.
    ## In my interpretation, this includes the columns ending in mean() and std()
    ## but not meanFreq() since meanFreq() is a weighted average of the frequency
    ## components, not the mean of the signal itself.
    ## Similarly, I am excluding the means used on the angle() variable because
    ## these were obtained by averaging all signals together and aren't the mean of 
    ## a single measurement themselves.
        colswanted <- grepl("Volunteer|mean\\(\\)|std\\(\\)|Activity", names(totaldata))
        smallerdata <- totaldata[,colswanted]
        

## Finally, Compute the average of each variable for each activity.
    library(dplyr)
    tidydata <- smallerdata %>% 
                    group_by(Activity, Volunteer)  %>%
                    summarize_all(mean)