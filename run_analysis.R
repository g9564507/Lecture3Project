
###############################################################
### Step 0
### Reading needed data

activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

## read test data
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")


## read train data
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")

###############################################################
### Step 1 
### Merges the training and the test sets to create one data set.


## give column names and combine test data
colnames(xTest)<-features$V2
colnames(subjectTest)<-"subjects"
colnames(yTest)<-"activities"
dataTest<-cbind(subjectTest,yTest,xTest)
# test<-as.data.frame(rep("test",nrow(xTest)))

## give column names and combine train data
colnames(xTrain)<-features$V2
colnames(subjectTrain)<-"subjects"
colnames(yTrain)<-"activities"
dataTrain<-cbind(subjectTrain,yTrain,xTrain)

## The result step 1, merged dataset = dataMerge
dataMerge<-rbind(dataTest,dataTrain)  



###############################################################
### Step 2 
### Extracts only the measurements on the mean and standard deviation for each measurement.


## Extract the column numbers of those including "mean" , "std" ,"subjects",or "activities"
colExtract<-grep("mean|std|subjects|activities",colnames(dataMerge),fixed=FALSE,ignore.case =FALSE)

## The result of step 2, extracted dataset = dataExtract
dataExtract<- dataMerge[ ,colExtract]



###############################################################
### Step 3 
### Uses descriptive activity names to name the activities in the data set

## notShowInR is for forceing gsub() not to print the results on the screen 

dataExtract$activities <- gsub(1,"Walking",dataExtract$activities) 
dataExtract$activities <- gsub(2,"Walking upstairs",dataExtract$activities)
dataExtract$activities <- gsub(3,"Walking downstairs",dataExtract$activities)
dataExtract$activities <- gsub(4,"Sitting",dataExtract$activities)
dataExtract$activities <- gsub(5,"Standing",dataExtract$activities)
dataExtract$activities <- gsub(6,"Laying",dataExtract$activities)



###############################################################
### Step 4 
### Uses descriptive activity names to name the activities in the data set


colnames(dataExtract)<-sub("^t","time", colnames(dataExtract) )
colnames(dataExtract)<-sub("^f","frequency", colnames(dataExtract) )
colnames(dataExtract)<-sub("Acc","Acceleration", colnames(dataExtract) )
colnames(dataExtract)<-sub("Mag","Magnitude", colnames(dataExtract) )
colnames(dataExtract)<-sub("mean","Mean", colnames(dataExtract) )
colnames(dataExtract)<-sub("std","Std", colnames(dataExtract) )
colnames(dataExtract)<-sub("\\()","", colnames(dataExtract) )
colnames(dataExtract)<-gsub("-","", colnames(dataExtract) )



###############################################################
### Step 5 
### From the data set in step 4, creates a second, independent tidy data set 
### with the average of each variable for each activity and each subject. 



tempFrame<-data.frame()  ## dataframe to use tapply
dataTemp<-data.frame()   ## temp data.frame for each subject
data    <- data.frame()  ## the result data frame 

for( i in 1:30){
    
	tempFrame <- dataExtract[dataExtract$subjects == i,]
    dataTemp[1:6,1]<- i    ## subjects 
    dataTemp[1:6,2]<- rownames(tapply(tempFrame[,1],tempFrame$activities,mean)) ## activities
          
	for (j in 3:81){

	    dataTemp[,j]<-tapply(tempFrame[,j],tempFrame$activities,mean)  ## mean of subject=i , column = j
            
    }

    if(i==1){ 
            data<-dataTemp  
        }
    else{
     	data<-rbind(data,dataTemp)
     }
}


dim(data)
colnames(data)<-colnames(dataExtract)

write.table(data,"dataset.csv",row.name=FALSE)
