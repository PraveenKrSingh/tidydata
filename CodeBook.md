                   #codebook for the tidy data available in tidy.txt
				 
##Source Data or Raw Data :

	URL : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

	DESCRIPTION:

		The experiments have been carried out with a group of 30 volunteers within an age bracket of
	19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, 
	WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) 
	on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
	acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have 
	been video-recorded to label the data manually. The obtained dataset has been randomly 
	partitioned into two sets, where 70% of the volunteers was selected for generating the 
	training data and 30% the test data. 

	TOTAL OBERVATIONS : 10299 (including test and train)
	Number of Attributes: 561
 


###Tidy Data :

	DESCRIPTION:

		This set is basically the culmination of both the test and train set available in the Raw Data.
	The data contains the mean values of those attributes available in the raw data , which are 
	specifically mean or standard deviation measurements in nature for each volunteer and each activity.

	TOTAL OBERVATIONS : 180 
	Number of Attributes: 81
	
	Variables : 
	
		subject_no :
			Description : It contains the subject numbers or ids and ranges from 1 to 30
			Nature: numeric
			
		Activity   :
		    Description :provides the activity for which the measurement is done
            Nature: Character 
			
		**Rest of the variables are a combination of names from [A] and [B]	all of which are 
		  numeric in nature

        [A]
		
		'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The names with XYZ
		 will be further broken into three names with -X,-Y and -Z suffixes.
		
			tBodyAcc-XYZ
			tGravityAcc-XYZ
			tBodyAccJerk-XYZ
			tBodyGyro-XYZ
			tBodyGyroJerk-XYZ
			tBodyAccMag
			tGravityAccMag
			tBodyAccJerkMag
			tBodyGyroMag
			tBodyGyroJerkMag
			fBodyAcc-XYZ
			fBodyAccJerk-XYZ
			fBodyGyro-XYZ
			fBodyAccMag
			fBodyAccJerkMag
			fBodyGyroMag
			fBodyGyroJerkMag
			
		[B]	
		
			mean(): Mean value
			std(): Standard deviation
			meanFreq(): Weighted average of the frequency components to obtain a mean frequency
			
###Steps involved to Reach Tidy data from Raw data :			
			
	1.first the two data sets in the Raw data ,test and train are provided with proper variable names
	  
	2.after that each observation in each set is combined with the proper subject number and activity

    3.Then both the data sets are merged together.

	4.After that those variables that are mean or std measurements and subject number and activity is 
	selected out.
	
	5.data is summarized based on the subject number and activity and mean of other variables is 
	computed.
	
	6.This is out final result and is stored.
