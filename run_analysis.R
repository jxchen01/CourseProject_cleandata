####################################################
######## identify the desired variables ############
####################################################
## 1.extract the value of mean and std only

allVar<-read.table('./Dataset/features.txt')
meanVar<-grep("mean",allVar$V2)
meanVar<-as.data.frame(meanVar)
colnames(meanVar)<-c('index')
stdVar<-grep("std",allVar$V2)
stdVar<-as.data.frame(stdVar)
colnames(stdVar)<-c('index')
selectedVar<-rbind(meanVar,stdVar)

## 2.assign a descriptive name for each feature
varName<-as.character(allVar[selectedVar$index,"V2"])
varName<-sub("^t","time_signal_of_",varName)
varName<-sub("^f","frequency_signal_of_",varName)
varName<-sub("mean[[:punct:]][[:punct:]]","MeanValue",varName)
varName<-sub("Acc","_Acceleration",varName)
varName<-sub("Gyro","_GyroscopeMeasurement",varName)
varName<-sub("Jerk","_Jerk_Signal",varName)
varName<-sub("Mag","_Magnitude",varName)

####################################################
############## load TEST dataset ###################
####################################################

## load the subject ID of each observation in TEST
mysub<-read.table('./Dataset/test/subject_test.txt');
colnames(mysub)<-c('subjectID')

## load the features of each observation in TEST
mydata<-read.table('./Dataset/test/X_test.txt')
validData<-mydata[ ,selectedVar$index]
colnames(validData)<-varName

## load the activity label of each observation in TEST
myact<-read.table('./Dataset/test/Y_test.txt')
colnames(myact)<-c("ActivityType")

## merge subject ID, features, and activity labels
mergedTest<-cbind(mysub,validData,myact)

####################################################
############## load TRAIN dataset ##################
####################################################

## load the subject ID of each observation in TRAIN
mysub<-read.table('./Dataset/train/subject_train.txt');
colnames(mysub)<-c('subjectID')

## load the features of each observation in TRAIN
mydata<-read.table('./Dataset/train/X_train.txt')
validData<-mydata[ ,selectedVar$index]
colnames(validData)<-varName

## load the activity label of each observation in TRAIN
mydata<-read.table('./Dataset/train/Y_train.txt')
colnames(mydata)<-c("ActivityType")

## merge subject ID, features, and activity labels
mergedTrain<-cbind(mysub,validData,mydata)

####################################################
######## combine TEST and TRAIN dataset ############
####################################################
mergedData<-rbind(mergedTest,mergedTrain)

## update the descriptive activity labels
actdata<-read.table("./Dataset/activity_labels.txt")
for (i in c(1:nrow(actdata)) ){
	mergedData[which(mergedData$ActivityType==i),"ActivityType"]<-as.character(actdata[i,"V2"])
}
write.csv(mergedData,"tidy_dataset.csv",row.names=FALSE)

####################################################
######## create a seperate tidy dataset ############
####################################################

Label1<-mergedData$subjectID;
Label2<-mergedData$ActivityType;
newdata<-sapply(split(mergedData,list(Label1,Label2)), function(x) colMeans(x[,varName],na.rm = TRUE))
write.csv(newdata,"new_dataset.csv",row.names=TRUE)
