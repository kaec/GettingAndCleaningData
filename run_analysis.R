cleanData <- function()
{
  # performed activities and Activity ID to Name
  activityLabels <- read.table("Datasets\\activity_labels.txt", col.names = c("ActivityID", "Activity"))
  trainActivityID <- read.table("Datasets\\train\\y_train.txt", col.names = c("ActivityID"))
  testActivityID <- read.table("Datasets\\test\\y_test.txt", col.names = c("ActivityID"))
  
  activityIDs <- rbind(trainActivityID, testActivityID)
  
  # feature names and ID
  features <- read.table("Datasets\\features.txt", col.names = c("FeatureID", "Feature"))

  # Appropriately labels the data set with descriptive variable names
  # uses feature names from feature df
  trainSet <-read.table("Datasets\\train\\X_train.txt", col.names = features[,"Feature"], check.names = FALSE )
  testSet <- read.table("Datasets\\test\\X_test.txt", col.names = features[,"Feature"], check.names = FALSE )
  
  # Merges the training and the test sets to create one data set.
  allSet <- rbind(trainSet, testSet)
  
  # Extracts only the measurements on the mean and standard deviation for each measurement. 
  # uses regular expression to get any variables with mean() or std() in its name 
  # as well as the Activity column
  stdMeanSet <- allSet[, grep('mean\\(\\)|std\\(\\)', colnames(allSet))]
  
  # Uses descriptive activity names to name the activities in the data set
  # matches the activity ids in the train and test data to activity names
  labels <- activityLabels[match(activityIDs$ActivityID, activityLabels$ActivityID), "Activity"]
  stdMeanSet <- cbind(labels, stdMeanSet)
  colnames(stdMeanSet)[1] <- "Activity"
  
  # write out clean data
  write.table(stdMeanSet, "Activities_StdMean.txt")

  # Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  subjectTest <- read.table("Datasets\\test\\subject_test.txt",col.names = c("SubjectID"))
  subjectTrain <- read.table("Datasets\\train\\subject_train.txt",col.names = c("SubjectID"))
  
  subjectIDs <- rbind(subjectTrain, subjectTest)

  #merge the subject ids to the complete feature set
  meanSet <- cbind(subjectIDs, stdMeanSet)
  
  # take the mean of every combination of subjectID and activity
  meanSet <- dcast(melt(meanSet, id=1:2), SubjectID + Activity ~ ... ,mean)
  names(meanSet)[3:length(meanSet)] <- paste(names(meanSet)[3:length(meanSet)], "Mean", sep = ".")
  write.table(meanSet,"SubjectActivities_mean.txt")

}