# GCD-Course-Project
Getting and Cleaning Data Course Project

## Data Set Source

The data was collected from sensors of smartphone carried by experiment subject when performing certain activity.
There have been 30 subjects, and each subject performed 6 activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

A full description is available at the [site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

## Processes to Get Tidy Data

The `reshape2` package was required to `melt()` and `dcast()` the data frame.

1. Download and unzip the data set file.
2. Read the relevant files to variables: 
	- features.txt -> features
	- activity\_labels.txt -> act
	- y\_test.txt -> ytest
	- y\_train.txt -> ytrain
	- subject\_test.txt -> subj\_test
	- subject\_train.txt -> subj\_train
	- X\_test.txt -> xtest\_df
	- X\_train.txt -> xtrain\_df
3. Merge the test and train data(xtest\_df & xtrain\_df), `cbind()` the subject number(subj\_test & subj\_train) and activity lables(act) to the left of the merged data, and name the cols with features.
4. Extract the cols with "mean()" or "std()". Cols with "meanFreq()" are not included because it calculates the mean frequency not the mean value.
5. Use the `melt()` and `dcast()` functions to get the narrow tidy data.
6. Give the tidy data proper variable names and use `write.table()` function to create a .txt file.