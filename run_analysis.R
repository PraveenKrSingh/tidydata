library("dplyr")  #[1]loading the "dplyr" data frame  
     
               	  #[2]pulling in the data from the test folder into data frames
testdata<-read.table("./UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")
subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt")

                  #[3]pulling in the data from the train folder into data frames
traindata<-read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")
subtrain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
                  
				  #[4]getting the names of the variable and putting it in the vector named "name"
name_frame<-read.table("./UCI HAR Dataset/features.txt",stringsAsFactors =FALSE)
name<-name_frame[,2]

                  #[5]proving these variable names to the both the data frames testdata and train data   
names(testdata)<-name
names(traindata)<-name

                  #[6]creating two new factor that provide descriptive names of the activities
Activity_test<-cut(ytest[,1],6,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
Activity_train<-cut(ytrain[,1],6,labels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
                  
				  #[7]putting the subject or volunteer numbers into two vectors
subject_no_test<-subtest[,1]
subject_no_train<-subtrain[,1]
                  
				  #[8]cbinding the corresponding subject number and activities two each train and test data
train<-cbind(subject_no_train,Activity_train,traindata)
test<-cbind(subject_no_test,Activity_test,testdata)

                  #[9]giving same name to the first two columns of both the data before rbinding 
names(train)[1:2]<-c("subject_no","Activity")
names(test)[1:2]<-c("subject_no","Activity")

                  #[10]rbinding and getting the total observations
complete<-rbind(train,test)

                  #[11]temporarily storing the first two columns of the complete set 
complete_temp<-complete[,1:2]

                  #[12]selecting only those column the involve mean() or std()
complete<-complete[,union(grep("mean()",names(complete)),grep("std()",names(complete)))]

                  #[13]changing the variable "Activity"'s class from factor to character to avoid complications later 
complete_temp$Activity<-as.character(complete_temp$Activity)

                  #[14]for the last step of the project , splitting the complete and temp_complete by temp_complete
c<-split(complete,complete_temp)
d<-split(complete_temp,complete_temp)

                  #[15]by sapplying , doing column means on one list and choosing the first row form each member of the second list  
e<-sapply(c,colMeans)
f<-sapply(d,function(x) x[1,])

                  #[16]rbinding both to get the total data 
i<-rbind(f,e)
                  
				  #[17]transposing to get variables in the columns 
j<-t(i)
                  
				  #[18]proving proper row numbers 
rownames(j)<-seq(nrow(j))

                  #[19]variable "j" has the final result so saving it into tidy.txt file
write.table(j,"tidy.txt",row.name=FALSE)



