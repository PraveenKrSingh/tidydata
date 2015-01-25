MARKDOWN




#MarkDown for the r-script "run_analysis.R
"

## "run_analysis.R" creates tidy data for the data from wearable computing device



###steps followed :		

* [1]loading the "dplyr" data frame 

* [2]pulling in the data from the test folder into data frames

* [3]pulling in the data from the train folder into data frames

* [4]getting the names of the variable and putting it in the vector named "name"

* [5]proving these variable names to the both the data frames testdata and train data

* [6]creating two new factor that provide descriptive names of the activities

* [7]putting the subject or volunteer numbers into two vectors

* [8]cbinding the corresponding subject number and activities two each train and test data

* [9]giving same name to the first two columns of both the data before rbinding 

* [10]rbinding and getting the total observations

* [11]temporarily storing the first two columns of the complete set

* [12]selecting only those column the involve mean() or std()

* [13]changing the variable "Activity"'s class from factor to character to avoid complications later
 
* [14]for the last step of the project , splitting the complete and temp_complete by temp_complete

* [15]by sapplying , doing column means on one list and choosing the first row form each member of the second list
  
* [16]rbinding both to get the total data 

* [17]transposing to get variables in the columns 

* [18]proving proper row numbers 

* [19]variable "j" has the final result so saving it into tidy.txt file 
