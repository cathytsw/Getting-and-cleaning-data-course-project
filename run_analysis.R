#Read training data
subjectTrain<-read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
activityTrain<-read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)
labelTrain<-read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)
#Read test data
subjectTest<-read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)
activityTest<-read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
labelTest<-read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE)
#Read the features data
feature<-read.table("UCI HAR Dataset/features.txt", header=FALSE)
#Read the activity labels
activityLabel<-read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE)
# Combine training and test data according to "subject","activty" and "labels"
subject<-rbind(subjectTrain, subjectTest)
activity<-rbind(activityTrain,activityTest)
labels<-rbind(labelTrain,labelTest)
#Assign column names
colnames(subject) <-"Subject"
colnames(activity)<-t(feature[,2])
colnames(labels)<-"Activitylabel"
#merge all into one dataset
mrgData<-cbind(subject,labels,activity)

#Extract column for mean and SD
colNeeded<-c(1, 2, grep(".*mean.*|.*std.*", names(mrgData), ignore.case = TRUE))
mrgDataMeanStd<-mrgData[, colNeeded]

#replace the activity labels in dataset into descriptive acitivty names
mrgDataMeanStd[,2]<-as.character(mrgDataMeanStd[,2])
for(i in 1:6) {
  mrgDataMeanStd$Activitylabel[mrgDataMeanStd$Activitylabel == i] <- as.character(activityLabel[i,2])
}

#label dataset with descriptive variable names
names(mrgDataMeanStd) <-gsub("^t","Time",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("^f","Frequency",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("Acc","Accelerometer",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("Gyro","Gyroscope",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("Mag","Magnitude",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("-mean()","Mean",names(mrgDataMeanStd),ignore.case= TRUE)
names(mrgDataMeanStd) <-gsub("-std()","Std",names(mrgDataMeanStd),ignore.case = T)
names(mrgDataMeanStd) <- gsub("-meanFreq()","MeanFrequency",names(mrgDataMeanStd),ignore.case = T)
names(mrgDataMeanStd) <-gsub("tBody","TimeBody",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("angle","AngleBetween",names(mrgDataMeanStd))
names(mrgDataMeanStd) <-gsub("gravity","Gravity",names(mrgDataMeanStd))

#create another independent dataset containing avg of ach variable for each activity and each subject
library(dplyr)
mrgDataMeanStd2<- mrgDataMeanStd %>% group_by(Activitylabel,Subject) %>% summarise_all(mean)

#Export 
write.table(mrgDataMeanStd2, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)
